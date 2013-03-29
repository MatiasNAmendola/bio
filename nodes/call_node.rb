class CallNode
  def eval context
    if receiver.nil? && context.locals[method] && arguments.empty?
      context.locals[method]
    else
      if receiver
        if receiver.kind_of?(CallNode) and receiver.receiver.nil? and receiver.method == "self"
          value = context.current_self
        else
          value = receiver.eval context
        end
      else
        value = context.current_self
      end

      eval_arguments = arguments.map { |arg| arg.eval(context) }
      value.call method, eval_arguments
    end
  end
end
