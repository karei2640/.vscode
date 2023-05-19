class Person
    def initialize(name)
      @name = name
    end
  
    def greet
      puts "Hello, #{@name}!"
    end
  end
  
  person = Person.new("Alice")
  person.greet
  