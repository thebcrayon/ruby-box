class GoodDog
  # Constants
  DOG_YEARS = 7

  # Class Variables
  @@number_of_dogs = 0

  # Instance Variables
  attr_accessor :name, :age 

  # Class Methods
  def self.total_number_of_dogs
    @@number_of_dogs
  end

  # Instance Methods
  def initialize(name, age)
    self.name = name
    self.age = age
    @@number_of_dogs += 1
  end

  def to_s
    "#{name} is the dog's name and he is #{age} years old"
  end

  def public_disclosure
    "#{self.name} in human years is #{self.human_years}"
  end

  private

  def human_years
    age * DOG_YEARS
  end
end


puts GoodDog.total_number_of_dogs

fido = GoodDog.new('fido', 5)
p fido.public_disclosure
