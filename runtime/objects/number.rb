Runtime["Number"].runtime_methods["+"] = proc do |receiver,arguments|
  result = receiver.ruby_value + arguments.first.ruby_value
  Runtime["Number"].new_with_value result
end

Runtime["Number"].runtime_methods["<"] = proc do |receiver,arguments|
  result = receiver.ruby_value < arguments.first.ruby_value
  result ? Runtime["TrueClass"].new_with_value(true) : Runtime["FalseClass"].new_with_value(false)
end

Runtime["Number"].runtime_methods[">"] = proc do |receiver,arguments|
  result = receiver.ruby_value > arguments.first.ruby_value
  result ? Runtime["TrueClass"].new_with_value(true) : Runtime["FalseClass"].new_with_value(false)
end
