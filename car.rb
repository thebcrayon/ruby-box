# frozen_string_literal: true

class Car
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @current_speed = 0
  end
end

toyota = Car.new(2026, 'Toyota', 'Camry')

p toyota
