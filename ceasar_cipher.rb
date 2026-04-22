# frozen_string_literal: true

def caesar_cipher(string, offset)
  string_array = string.chars
  shifted_letters = shift_letters(string_array, offset)
  shifted_letters.join
end

def shift_letters(word_array, offset)
  word_array.map do |letter|
    letter == ' ' ? ' ' : process_letter(letter, offset)
  end
end

def alphabet
  ('a'..'z').to_a
end

def process_letter(original_letter, offset)
  shifted_letter = alphabet[(alphabet.find_index(original_letter.downcase) + offset) % 26]
  lower_case?(original_letter) ? shifted_letter.downcase : shifted_letter.upcase
end

def lower_case?(letter)
  letter == letter.downcase
end

p caesar_cipher('What a string', 5)
