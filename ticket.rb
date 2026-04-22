# frozen_string_literal: true

def any_not_checked_in?(tickets)
  tickets.any? { |t| !t[:checked_in] }
end

tickets = [
  { parent: 'Smith', checked_in: true },
  { parent: 'Garcia', checked_in: true },
  { parent: 'Nguyen', checked_in: false }
]

puts any_not_checked_in?(tickets)
