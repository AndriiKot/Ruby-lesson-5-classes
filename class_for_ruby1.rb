class Person
  attr_accessor :name,age
 
  def initialize name,age
    @name,@age = name,age
  end
end

class Manager < Person
end