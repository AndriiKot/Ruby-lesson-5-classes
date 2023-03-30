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

# Hello my name is Animal
# Hello from Kernel!
