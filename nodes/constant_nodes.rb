class GetConstantNode
  def eval context
    context[name]
  end
end

class SetConstantNode
  def eval context
    context[name] = value.eval(context)
  end
end
