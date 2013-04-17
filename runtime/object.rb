class BioObject
  attr_accessor :runtime_class, :ruby_value

  def initialize runtime_class, ruby_value=self
    @runtime_class, @ruby_value = runtime_class, ruby_value
    unless @runtime_class.nil?
      @runtime_class.runtime_methods["methods"] = proc do |receiver,arguments|
        result = @runtime_class.runtime_methods_list
        Runtime["Array"].new_with_value(result)
      end
    end
    if @ruby_value.respond_to?(:each)
      new_value = []
      @ruby_value.each do |val|
        new_value.push(Runtime["String"].new_with_value(val)) if val.kind_of? String
      end
      @ruby_value = new_value unless new_value.empty?
    end
  end

  def call method, arguments=[]
    @runtime_class.lookup(method).call(self, arguments)
  end

  def runtime_methods_list
    if @ruby_value.kind_of? BioClass
      @ruby_value.runtime_methods_list
    else
      @runtime_class.runtime_methods_list
    end
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

