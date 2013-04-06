class BioObject
  attr_accessor :runtime_class, :ruby_value

  def initialize runtime_class, ruby_value=self
    @runtime_class, @ruby_value = runtime_class, ruby_value
    if @ruby_value.respond_to?(:each)
      new_value = []
      @ruby_value.each do |val|
        new_value << Runtime["String"].new_with_value(val)
      end
      @ruby_value = new_value
    end
  end

  def call method, arguments=[]
    @runtime_class.lookup(method).call(self, arguments)
  end

  def runtime_methods
    @runtime_class.runtime_methods.keys
  end

  def printable
    value = @ruby_value.inspect
    if @ruby_value.respond_to?(:each)
      value = "["
      @ruby_value.each_with_index do |val,idx|
        value += val.printable
        value += "," unless idx + 1 == @ruby_value.size
      end
      value += "]"
    end

    value
  end
end

