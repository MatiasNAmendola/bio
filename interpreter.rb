require "parser"
require "runtime"
Dir.glob("nodes/*").each { |file| require file }

class Interpreter
  def initialize
    @parser = Parser.new
  end

  def eval code
    @parser.parse(code).eval(Runtime)
  end
end
