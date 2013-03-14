bio_class = BioClass.new
bio_class.runtime_class = bio_class
object_class = BioClass.new
object_class.runtime_class = bio_class

Runtime = Context.new(object_class.new)

Runtime["Class"] = bio_class
Runtime["Object"] = object_class
Runtime["Number"] = BioClass.new(Runtime["Object"])
Runtime["String"] = BioClass.new(Runtime["Object"])
Runtime["TrueClass"] = BioClass.new(Runtime["Object"])
Runtime["FalseClass"] = BioClass.new(Runtime["Object"])
Runtime["NilClass"] = BioClass.new(Runtime["Object"])
Runtime["true"] = Runtime["TrueClass"].new_with_value true
Runtime["false"] = Runtime["FalseClass"].new_with_value false
Runtime["nil"] = Runtime["NilClass"].new_with_value nil

Runtime["Class"].runtime_methods["new"] = proc do |receiver,arguments|
  receiver.new
end

Runtime["Object"].runtime_methods["print"] = proc do |receiver,arguments|
  puts arguments.first.ruby_value
  Runtime["nil"]
end

Runtime["Number"].runtime_methods["+"] = proc do |receiver,arguments|
  result = receiver.ruby_value + arguments.first.ruby_value
  Runtime["Number"].new_with_value result
end
