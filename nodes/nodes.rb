class Nodes
  def eval context
    return_value = nil
    nodes.each do |node|
      return_value = node.eval context
    end

    return_value || Runtime["nil"]
  end
end
