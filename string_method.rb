# frozen_string_literal: true

def string_method(string)
  string.upcase! if string.length > 10

  string
end

puts string_method('hello')
