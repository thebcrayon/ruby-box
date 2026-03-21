tickets = [
  { parent: "Smith", price: 10, paid: false },
  { parent: "Garcia", price: 15, paid: false },
  { parent: "Nguyen", price: 20, paid: true }
]

puts tickets
      .select { |t| t[:paid] }
      .reduce(0) { |acc, ticket| acc + ticket[:price] }