require "test_helper"
require "interpreter"

class LogicalOperatorTest < Test::Unit::TestCase
  def test_and
    assert_equal true, Interpreter.new.eval("true and true").ruby_value
    assert_equal false, Interpreter.new.eval("false and true").ruby_value
  end

  def test_and_operator
    assert_equal true, Interpreter.new.eval("true && true").ruby_value
    assert_equal false, Interpreter.new.eval("false && true").ruby_value
  end

  def test_or
    assert_equal true, Interpreter.new.eval("true or false").ruby_value
    assert_equal false, Interpreter.new.eval("false or false").ruby_value
  end

  def test_or_operator
    assert_equal true, Interpreter.new.eval("true || false").ruby_value
    assert_equal false, Interpreter.new.eval("false || false").ruby_value
  end
end
