def mutate_array(array)
  array.pop
end

a = [1, 2, 3]

puts a
mutate_array(a)
puts a 