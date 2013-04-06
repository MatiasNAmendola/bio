class NumberNode
  def eval context
    Runtime["Number"].new_with_value value
  end
end

