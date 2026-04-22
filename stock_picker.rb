# frozen_string_literal: true

def stock_picker(stock_array)
  best_days = []

  largest_profit = 0

  stock_array.each_with_index do |buy, i|
    stock_array.each_with_index do |sell, j|
      next if j < i

      current_profit = sell - buy

      if current_profit > largest_profit
        largest_profit = current_profit
        best_days = [i, j]
      end
    end
  end
  best_days
end

stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]

p stock_picker(stocks)
