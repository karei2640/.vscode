class Person
  def initialize(name)
  @name = name
  end
  
  def greet
  puts "こんにちは、#{@name}さん！"
  end
  end
  
  person = Person.new("名前")
  person.greet

