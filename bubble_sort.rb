# frozen_string_literal: true

def bubble_sort(array)
  loop do
    swapped = false
    (array.length - 1).times do |idx|
      a = array[idx]
      b = array[idx + 1]

      next unless a > b

      array[idx] = b
      array[idx + 1] = a
      swapped = true
    end
    break unless swapped
  end
  array
end
p bubble_sort([100, 4, 3, 78, 2, 0, 2])
p bubble_sort([4, 3, 2, 1])      # => [1, 2, 3, 4]
p bubble_sort([1, 2, 3, 4])      # => [1, 2, 3, 4]
p bubble_sort([3, 1, 2])         # => [1, 2, 3]
p bubble_sort([5, 5, 1, 1, 3])   # => [1, 1, 3, 5, 5]
p bubble_sort([])                # => []
p bubble_sort([1])               # => [1]
