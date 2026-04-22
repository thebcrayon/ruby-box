# frozen_string_literal: true

def substrings(string, dictionary)
  input_array = string.split
  dictionary.each_with_object(Hash.new(0)) do |dictionary_word, acc|
    input_array.each do |word|
      acc[dictionary_word] += 1 if word.downcase.match?(dictionary_word.downcase)
    end
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

p substrings("Howdy partner, sit down! How's it going?", dictionary)
