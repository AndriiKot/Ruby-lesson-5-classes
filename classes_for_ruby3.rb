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





