class Viking

  # Class Variable and Methods
  @@starting_health = 120

  def Viking.create_warrior
    age = (rand * 20 + 15).to_i
    name = Viking.random_name
    health = [age * 5, @@starting_health].min
    strength = [age / 2, 10].min
    Viking.new(name, age, health, strength)
  end

  def Viking.random_name
    ["Erik","Lars","Leif","Brock", "Sven", "Lutz", "Holfen"].sample
  end

  # Instance Variables and Methods
  attr_accessor :name, :age, :health, :strength

  def initialize(name, age, health, strength)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end

  def take_damage(damage)
    self.health -= damage
    self.shout("OUCH!")
  end

  def sleep(num)
    num.times do |i|
      self.health += 1 unless self.health >= 119
    end
  end

  def shout(str)
    puts str
  end

  private

  
end

viking = Viking.create_warrior

p viking