# frozen_string_literal: true

tickets = [
  { checked_in: false },
  { checked_in: false },
  { checked_in: false }
]

puts(tickets.none? { |ticket| ticket[:checked_in] })
