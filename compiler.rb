require "parser"
require "nodes"

require "llvm/core"
require "llvm/execution_engine"
require "llvm/transforms/scalar"
require "llvm/transforms/ipo"

LLVM.init_jit

class Compiler
  attr_reader :locals

  PCHAR = LLVM::Type.pointer(LLVM::Int8)
  INT = LLVM::Int

  def initialize mod=nil, function=nil
    @module = mod || LLVM::Module.new("bio")
    @locals = {}
    @function = function || @module.functions.named("main") || @module.functions.add("main", [], LLVM.Void)
    @builder = LLVM::Builder.new
    @builder.position_at_end(@function.basic_blocks.append)
    @engine = LLVM::JITCompiler.new @module
  end

  def preamble
    define_external_functions
  end

  def finish
    @builder.ret_void
  end

  def new_string value
    @builder.global_string_pointer(value)
  end

  def new_number value
    LLVM::Int value
  end

  def call func, args=[]
    f = @module.functions.named func
    @builder.call f, *args
  end

  def assign name, value
    ptr = @builder.alloca value.type
    @builder.store value, ptr
    @locals[name] = ptr
  end

  def load name
    @builder.load @locals[name]
  end

  def function name
    func = @module.functions.add name, [], LLVM.Void
    generator = Compiler.new @module, func
    yield generator
    generator.finish
  end

  def optimize
    @module.verify!
    pass_manager = LLVM::PassManager.new @engine
    pass_manager.simplifycfg!
    pass_manager.mem2reg!
    pass_manager.gdce!
  end

  def run
    @engine.run_function @function
  end

  def dump
    @module.dump
  end

  private
  def define_external_functions
    fun = @module.functions.add("printf", [PCHAR], INT, { :varargs => true })
    fun.linkage = :external

    fun = @module.functions.add("puts", [PCHAR], INT)
    fun.linkage = :external

    fun = @module.functions.add("read", [INT, PCHAR, INT], INT)
    fun.linkage = :external

    fun = @module.functions.add("exit", [INT], INT)
    fun.linkage = :external
  end
end

class Nodes
  def compile compiler
    nodes.map { |node| node.compile(compiler) }.last
  end
end

class NumberNode
  def compile compiler
    compiler.new_number value
  end
end

class StringNode
  def compile compiler
    compiler.new_string value
  end
end

class CallNode
  def compile compiler
    raise "Receiver not supported for compilation" if receiver

    if receiver.nil? and arguments.empty? and compiler.locals[method]
      compiler.load(method)
    else
      compiled_arguments = arguments.map { |arg| arg.compile(compiler) }
      compiler.call(method, compiled_arguments)
    end
  end
end

class SetLocalNode
  def compile compiler
    compiler.assign name, value.compile(compiler)
  end
end

class DefNode
  def compile compiler
    raise "Parameters not supported for compilation" unless params.empty?
    compiler.function(name) do |function|
      body.compile(function)
    end
  end
end
