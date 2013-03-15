class SetLocalNode
  def eval context
    context.locals[name] = value.eval(context)
  end
end
