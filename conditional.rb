def upcase_ten(string)
  return string.upcase if string.length >= 10
  string
end

puts "Please enter text:"
input = gets.chomp
puts upcase_ten input
