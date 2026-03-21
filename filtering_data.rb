tickets = [
  { parent: "Smith", paid: true },
  { parent: "Garcia", paid: false },
  { parent: "Nguyen", paid: true },
  { parent: "Patel", paid: false }
]

paid = tickets.select { |ticket| ticket[:paid] }

p paid