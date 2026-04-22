# frozen_string_literal: true

tickets = [
  { parent: 'Smith', paid: true },
  { parent: 'Garcia', paid: true },
  { parent: 'Nguyen', paid: true }
]

puts(tickets.all? { |t| t[:paid] })
