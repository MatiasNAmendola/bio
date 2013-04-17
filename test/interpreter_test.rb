require "test_helper"
require "interpreter"

class InterpreterTest < Test::Unit::TestCase
  def test_number
    assert_equal 1, Interpreter.new.eval("1").ruby_value
  end

  def test_array
    test_arr = Interpreter.new.eval("[1,2]").ruby_value
    assert_equal 1, test_arr.first.ruby_value
    assert_equal 2, test_arr.last.ruby_value
  end

  def test_inheritance
    code = load_test_code "example_inheritance.bio"
    return_value = Interpreter.new.eval(code).ruby_value
    assert_equal true, return_value
  end

  def test_true
    assert_equal true, Interpreter.new.eval("true").ruby_value
  end

  def test_assign
    assert_equal 2, Interpreter.new.eval("a = 2; 3; a").ruby_value
  end

  def test_method
    code = load_test_code "example_method.bio"
    assert_equal "yah!", Interpreter.new.eval(code).ruby_value
  end

  def test_methods
    code1 = load_test_code "example_methods_1.bio"
    code2 = load_test_code "example_methods_2.bio"
    assert_equal Array, Interpreter.new.eval(code1).ruby_value.class
    assert_equal Array, Interpreter.new.eval(code2).ruby_value.class
  end

  def test_reopen_class
    code = load_test_code "example_reopen_class.bio"
    assert_equal 10, Interpreter.new.eval(code).ruby_value
  end

  def test_define_class
    code = load_test_code "example_class_def.bio"
    assert_equal true, Interpreter.new.eval(code).ruby_value
  end

  def test_if
    code = load_test_code "test_if_string.bio"
    assert_equal "works!", Interpreter.new.eval(code).ruby_value
  end

  def test_interpret
    code = load_test_code "example_interpreter.bio"
    assert_prints("yeah!\n") { Interpreter.new.eval(code) }
  end
end
