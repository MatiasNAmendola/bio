class BioClass < BioObject
  attr_reader :runtime_methods

  def initialize superclass=nil
    @runtime_methods, @runtime_superclass = {}, superclass
    runtime_class = Runtime["Class"] if defined? Runtime
    super runtime_class
  end

  def lookup method_name
    method = @runtime_methods[method_name]
    unless method
      if @runtime_superclass
        return @runtime_superclass.lookup method_name
      else
        raise "Method not found: #{method_name}"
      end
    end

    method
  end

  def new
    BioObject.new self
  end

  def new_with_value value
    BioObject.new self, value
  end

  def runtime_methods_list
    if @runtime_superclass.nil?
      super_methods = []
    else
      super_methods = @runtime_superclass.runtime_methods_list
    end

    @runtime_methods.keys + super_methods
  end
end

