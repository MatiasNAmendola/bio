Runtime["Number"].runtime_methods["+"] = proc do |receiver,arguments|
  result = receiver.ruby_value + arguments.first.ruby_value
  Runtime["Number"].new_with_value result
end
