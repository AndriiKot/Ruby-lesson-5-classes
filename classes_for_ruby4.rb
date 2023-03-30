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
p oxi.name  "Oxi"

 