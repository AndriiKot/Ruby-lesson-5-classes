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
____
____

```ruby
class Animal 
end

p Animal.ancestors    #[Animal,Object,Kernel,BasicObject]

module Kernel
  def my_method1 = puts "Hello from Kernel!"
end


class Animal
  def self.hello 
   puts "Hello my name is #{self.name}"
   my_method1
  end
end

p Animal.hello  
```

```cmd
# Hello my name is Animal
# Hello from Kernel!
```
____
____

```ruby
class Animal
end

p Animal.class            # Class
p Animal.class.superclass # Module
p Animal.class.ancestors  # [Class,Module,Object,Kernel,BasicObject]

module MyModule
end

=begin
class Animal < MyModule     # TypeError
end
=end
```

___
___

```node
class Person
  NAME = 'Anonymous'
end

name = Person

p name::NAME     # 'Anonymous'        

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

oxi = name.new 'Oxi'
p oxi.name    # "Oxi"
```
```cmd
"Anonymous"
"Oxi"
```
____
____

```ruby
NAME = "Incognito"

module Namespace
  class  Person
    NAME = "Anonymus"
    class << self
      def hello_from_class
        "Hello #{NAME}!"
      end
      def hello_from_main
        "Hello #{::NAME}!"
      end
    end
  end
end

name = Namespace::Person
p name::NAME              #"Anonymus"
p NAME                    # "Incognito"
p name.hello_from_class   # "Hello Anodymus!"
p name.hello_from_main    # "Hello Incogito!"
```

```cmd
"Anonymus"
"Incognito"
"Hello Anodymus!"
"Hello Incogito!"
```

