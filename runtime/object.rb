class BioObject
  attr_accessor :runtime_class, :ruby_value

  def initialize runtime_class, ruby_value=self
    @runtime_class, @ruby_value = runtime_class, ruby_value
  end

  def call method, arguments=[]
    @runtime_class.lookup(method).call(self, arguments)
  end
end
