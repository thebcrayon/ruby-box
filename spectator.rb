# frozen_string_literal: true

spectators = [
  { name: 'Smith', banned: false },
  { name: 'Garcia', banned: false },
  { name: 'Nguyen', banned: true }
]

puts(spectators.none? { |s| s[:banned] })
