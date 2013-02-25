$:.unshift File.expand_path("../../", __FILE__)
require "test/unit"
require "stringio"
require "pry"

class Test::Unit::TestCase
  def capture_streams
    out = StringIO.new
    $stdout = out
    $stderr = out
    yield
    out.rewind
    out.read
  ensure
    $stdout = STDOUT
    $stderr = STDERR
  end

  def assert_prints(expected, &block)
    assert_equal expected, capture_streams(&block)
  end

  def load_test_code filename
    File.open("test/code/#{filename}", "rb").read
  end
end
