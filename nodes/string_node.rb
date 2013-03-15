class StringNode
  def eval context
    Runtime["String"].new_with_value value
  end
end
