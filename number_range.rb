# frozen_string_literal: true

def number_range(number)
  if number.between?(0, 50)
    "The number #{number} is between 0 and 50"
  elsif number.between?(50, 100)
    "The number #{number} is between 50 and 100"
  else
    "The number #{number} is over 100"
  end
end

puts 'Enter a number 1-100'
puts number_range(gets.chomp.to_i)
