local = 0

loop do
  puts "Do you want to do this again?"
  answer = gets.chomp
  local += 1
  break unless answer == "Y"
end

puts local