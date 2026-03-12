puts "Please enter a number"
number = gets.chomp.to_i

until number < 0 do
  puts "Number is #{number}"
  number -= 1
end