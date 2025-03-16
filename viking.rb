class Viking

  # Class Variable and Methods
  @@starting_health = 120

  def self.create_warrior
    age = (rand * 20 + 15).to_i
    name = self.random_name
    health = [age * 5, @@starting_health].min
    strength = [age / 2, 10].min
    Viking.new(name, age, health, strength)
  end

  def self.random_name
    ["Erik","Lars","Leif","Brock", "Sven", "Lutz", "Holfen"].sample
  end

  # Instance Variables and Methods
  attr_accessor :name, :age, :health, :strength, :dead
 
  def initialize(name, age, health, strength)
    @name = name
    @age = age
    @health = health
    @strength = strength
    @dead = false
  end
  
  def sleep(num)
    num.times do |i|
      self.health += 1 unless self.health >= 119
    end
  end

  def attack(recipient)
    if recipient.dead
      puts "#{recipient.name} is already dead!"
      return false
    end
      damage = (rand * 10 + 10).round(0)
      recipient.take_damage(self.name, damage)  # `take_damage` called on `recipient`!
  end

  protected
  def take_damage(attacker, damage)
    self.health -= damage
    puts "Ouch! #{self.name} took #{damage} damage from #{attacker} and has #{self.health} health left"
    die if @health <= 0  
    # `die` called from within the same object as take_damage was (the `recipient` as well!)
  end

  private
  def die
    puts "#{self.name} has been killed :("
    self.dead = true    # assume we've defined a `dead` instance variable
end
  
end

viking1 = Viking.create_warrior
viking2 = Viking.create_warrior

10.times { viking1.attack(viking2) }