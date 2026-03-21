tournament = {
  courts: [
    {
      name: "Court 1",
      tickets: [
        { spectator: "Alice", vip: false },
        { spectator: "Bob", vip: false }
      ]
    },
    {
      name: "Court 2",
      tickets: [
        { spectator: "Chris", vip: true },
        { spectator: "Dana", vip: false }
      ]
    }
  ]
}

p (
  tournament[:courts].select do |court|
    court[:tickets].find { |t| t[:vip] }
  end 
)

