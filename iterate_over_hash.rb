person = { :name => 'Bob', :age => 62, :height => '6ft', :weight => 160 }

person.each do |key, value|
  puts "Bob's #{key} is #{value}."
end