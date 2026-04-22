# frozen_string_literal: true

a = 5

result = case a
         when 5
           'a is 5'
         when 6
           'a is 6'
         else
           'a is neither 5 or 6'
         end

puts result
