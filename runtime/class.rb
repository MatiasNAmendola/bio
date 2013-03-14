class BioClass < BioObject
  attr_reader :runtime_methods

  def initialize
    @runtime_methods = {}
    runtime_class = Runtime["Class"] if defined? Runtime
    super runtime_class
  end

  def lookup method_name
    method = @runtime_methods[method_name]
    raise "Method not found: #{method_name}" unless method

    method
  end

  def new
    BioObject.new self
  end

  def new_with_value value
    BioObject.new self, value
  end
end
