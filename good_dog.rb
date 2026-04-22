# frozen_string_literal: true

class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says Bark bark!!"
  end
end

sparky = GoodDog.new('Sparky')
fido   = GoodDog.new('Fido')

p sparky.speak
p fido.speak
