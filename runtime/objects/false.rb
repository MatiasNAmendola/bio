Runtime["FalseClass"].runtime_methods["&&"] = proc do |receiver,arguments|
  result = (receiver.ruby_value && arguments.first.ruby_value)
  if result
    Runtime["TrueClass"].new_with_value result
  else
    Runtime["FalseClass"].new_with_value result
  end
end

Runtime["FalseClass"].runtime_methods["and"] = proc do |receiver,arguments|
  result = (receiver.ruby_value and arguments.first.ruby_value)
  if result
    Runtime["TrueClass"].new_with_value result
  else
    Runtime["FalseClass"].new_with_value result
  end
end

Runtime["FalseClass"].runtime_methods["||"] = proc do |receiver,arguments|
  result = (receiver.ruby_value || arguments.first.ruby_value)
  if result
    Runtime["TrueClass"].new_with_value result
  else
    Runtime["FalseClass"].new_with_value result
  end
end

Runtime["FalseClass"].runtime_methods["or"] = proc do |receiver,arguments|
  result = (receiver.ruby_value or arguments.first.ruby_value)
  if result
    Runtime["TrueClass"].new_with_value result
  else
    Runtime["FalseClass"].new_with_value result
  end
end
