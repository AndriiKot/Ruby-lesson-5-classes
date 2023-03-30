# Ruby-lesson-5-classes
Ruby Lesson 5 classes

```ruby
class Person
  attr_accessor :name,:age
 
  def initialize name,age
    @name,@age = name,age
  end
end

class Manager < Person
end


manager1 = Manager.new 'Mr. Joe',30
p manager1                    # #<Manager: ... @name = "Mr. Joe",@age = 30>
p manager1.class              # Manager
p manager1.class.superclass   # Person
p manager1.class.ancestors    # [Manager,Person,Object,Kernel,BasicObject]
```
irb -r ./classes_for_ruby1.rb
```cmd
<Manager: ... @name = "Mr. Joe",@age = 30>
 Manager
 Person
[Manager,Person,Object,Kernel,BasicObject]
```

