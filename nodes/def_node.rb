class DefNode
  def eval context
    method = BioMethod.new params, body
    context.current_class.runtime_methods[name] = method
  end
end
