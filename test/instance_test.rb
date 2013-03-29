require "test_helper"
require "interpreter"

class InstanceTest < Test::Unit::TestCase
  def test_self
    assert_equal("SUCCESS", Interpreter.new.eval(load_test_code("example_self.bio")).ruby_value)
  end
end
