class ClassNode
  def eval context
    bio_class = context[name]

    unless bio_class
      bio_class = BioClass.new Runtime[super_class]
      context[name] = bio_class
    end

    class_context = Context.new bio_class, bio_class
    body.eval(class_context)

    bio_class
  end
end
