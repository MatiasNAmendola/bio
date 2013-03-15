class CallNode
  def eval context
    if receiver.nil? && context.locals[method] && arguments.empty?
      context.locals[method]
    else
      if receiver
        value = receiver.eval context
      else
        value = context.current_self
      end

      eval_arguments = arguments.map { |arg| arg.eval(context) }
      value.call method, eval_arguments
    end
  end
end
