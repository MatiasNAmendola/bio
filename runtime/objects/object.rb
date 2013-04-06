Runtime["Object"].runtime_methods["print"] = proc do |receiver,arguments|
  puts arguments.first.ruby_value
  Runtime["nil"]
end

Runtime["Object"].runtime_methods["=="] = proc do |receiver,arguments|
  result = receiver.ruby_value == arguments.first.ruby_value
  result ? Runtime["TrueClass"].new_with_value(true) : Runtime["FalseClass"].new_with_value(false)
end

Runtime["Object"].runtime_methods["!="] = proc do |receiver,arguments|
  result = receiver.ruby_value != arguments.first.ruby_value
  result ? Runtime["TrueClass"].new_with_value(true) : Runtime["FalseClass"].new_with_value(false)
end

Runtime["Object"].runtime_methods["methods"] = proc do |receiver,arguments|
  result = receiver.runtime_methods.first
end

