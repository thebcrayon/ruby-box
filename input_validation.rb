# frozen_string_literal: true

def prompt_choice
  loop do
    puts 'Please enter a number 1-9'
    input = gets.chomp.to_i

    break input if input.between?(1, 9)

    puts 'Incorrect, please try again...'
  end
end

choice = prompt_choice
p choice
