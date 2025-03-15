module Animal
  
  def self.some_method(arg)
    p "#{arg}"
  end

  class Dog
    def speak(word)
     p "#{word}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end

end

dog = Animal::Dog.new
cat = Animal::Cat.new
dog.speak("Arf!")
cat.say_name("Kitty!")

Animal.some_method('HELLO!')