# frozen_string_literal: true

puts 'What is your name?'
name = gets.chomp
puts 'When is your birth year?'
birth_year = gets.to_i

puts "Hello, #{name}. You are #{2026 - birth_year} years old!"
