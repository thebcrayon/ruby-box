# frozen_string_literal: true

puts 'Please enter a number'
number = gets.chomp.to_i

until number.negative?
  puts "Number is #{number}"
  number -= 1
end
