Runtime["Class"].runtime_methods["new"] = proc do |receiver, arguments|
  receiver.new
end

