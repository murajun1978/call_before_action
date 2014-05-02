class Foo
  def bar
  end

  def baz
  end

  private_class_method def self.call_before_action
    all_instance_methods = instance_methods - Class.instance_methods
    all_instance_methods.each do |method|
      class_eval <<-END
        alias original_#{method} #{method}
        def #{method}
          puts "You called #{method}."
          original_#{method}
        end
      END
    end
  end
  call_before_action
end
