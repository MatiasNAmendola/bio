class IfNode
  def eval context
    if condition.eval(context).ruby_value
      body.eval(context)
    end
  end
end
