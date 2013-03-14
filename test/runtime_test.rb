require "test_helper"
require "runtime"

class RuntimeTest < Test::Unit::TestCase
  def test_boot_runtime
    object = Runtime["Object"].call("new")
    assert_equal Runtime["Object"], object.runtime_class
  end
end
