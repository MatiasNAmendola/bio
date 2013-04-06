class ArrayNode
  def eval context
    new_value = []
    value.first.split(",").each do |code|
      new_value << Interpreter.new.eval(code)
    end
    Runtime["Array"].new_with_value new_value
  end
end

