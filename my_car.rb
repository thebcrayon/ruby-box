module SafetyCameras
  def camera_status
    "Cameras Active!"
  end
end


class Vehicle

  @@total_vehicles = 0

  attr_reader :model, :year, :age
  attr_accessor :color, :speed

  def self.mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def self.total_vehicles
   "Total vehicles on the road: #{@@total_vehicles}"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@total_vehicles += 1
  end

  def paint(new_color)
    self.color = new_color
    puts "You have changed the color of your #{year} #{model} to #{color}"
  end

  def accelerate(number)
    self.speed += number
    puts "You have accelerated to #{speed}mph."
  end
  
  def break(number)
    self.speed -= number
    puts "You have decelerated to #{speed}mph."
  end

  def current_speed
    puts "You are currently traveling at #{speed}mph."
  end

  def shut_off
    self.speed = 0
    puts "You are now stopped."
  end

  def to_s
    "This #{self.class} is a #{year} #{model} painted in #{color}."
  end

  def age
     "This #{self.model}'s age is #{years_old}."
  end

  private 

  def years_old
    Time.new.year - self.year
  end

end

class Car < Vehicle

  include SafetyCameras
  
  NUMBER_OF_DOORS = 4


end

class Truck < Vehicle

  NUMBER_OF_DOORS = 2

end

my_vehicle = Car.new(2020, 'White', 'Camry')

puts my_vehicle.age