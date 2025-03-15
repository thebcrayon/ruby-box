class Person
  def initialize(age)
    @age = age
  end

  def is_older?(other_person)
    self.age > other_person.age
  end

  protected

  attr_reader :age
end

john = Person.new(62)
jane = Person.new(25)

p john.is_older?(jane)
p jane.is_older?(john)

p john.age 