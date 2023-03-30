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





