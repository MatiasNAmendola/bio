class WhileNode
  def eval context
    while condition.eval(context).ruby_value
      body.eval(context)
    end
  end
end
