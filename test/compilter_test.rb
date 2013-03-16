require "test_helper"
require "compiler"

class CompilerTest < Test::Unit::TestCase
  def test_compiler
    code = load_test_code "example_compiler.bio"
    node = Parser.new.parse code

    compiler = Compiler.new
    compiler.preamble
    node.compile(compiler)
    compiler.finish
    compiler.optimize
    compiler.run
  end
end
