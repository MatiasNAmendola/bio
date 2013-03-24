Runtime["TrueClass"].runtime_methods["&&"] = proc do |receiver,arguments|
  result = (receiver.ruby_value && arguments.first.ruby_value)
  if result
    Runtime["TrueClass"].new_with_value result
  else
    Runtime["FalseClass"].new_with_value result
  end
end

Runtime["TrueClass"].runtime_methods["||"] = proc do |receiver,arguments|
  result = (receiver.ruby_value || arguments.first.ruby_value)
  if result
    Runtime["TrueClass"].new_with_value result
  else
    Runtime["FalseClass"].new_with_value result
  end
end
