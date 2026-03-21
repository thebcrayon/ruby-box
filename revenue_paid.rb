tickets = [
  { parent: "Smith", price: 10, paid: true },
  { parent: "Garcia", price: 10, paid: false },
  { parent: "Nguyen", price: 15, paid: true },
  { parent: "Patel", price: 5, paid: false }
]

revenue_paid = tickets.select { |ticket| ticket[:paid] }.reduce(0) { |acc, ticket| acc + ticket[:price] }
puts revenue_paid