Runtime["Object"].runtime_methods["print"] = proc do |receiver,arguments|
  puts arguments.first.ruby_value
  Runtime["nil"]
end
