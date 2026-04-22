# frozen_string_literal: true

tournament = {
  courts: [
    {
      id: 1,
      matches: [
        {
          id: 3001,
          status: 'completed',
          team_a: { id: 21, name: 'Gulf Coast Smash' },
          team_b: { id: 22, name: 'Metro Velocity' },
          updates: [
            { type: 'result_posted', sent: true },
            { type: 'bracket_updated', sent: true }
          ]
        },
        {
          id: 3002,
          status: 'live',
          team_a: { id: 23, name: 'Pearland Pulse' },
          team_b: { id: 24, name: 'River City Rage' },
          updates: [
            { type: 'match_started', sent: true }
          ]
        }
      ]
    },
    {
      id: 2,
      matches: [
        {
          id: 3003,
          status: 'up_next',
          team_a: { id: 25, name: 'Northside Sparks' },
          team_b: { id: 21, name: 'Gulf Coast Smash' },
          updates: [
            { type: 'court_assigned', sent: true },
            { type: 'reminder_sent', sent: true }
          ]
        }
      ]
    }
  ]
}

# Task:
# Return a hash where:
# key = court id
# value = total number of SENT updates across all matches on that court
#
# Rules:
# - Only count updates where sent == true
# - Aggregate per court

p(
  tournament[:courts].to_h do |court|
    [court[:id], court[:matches].sum { |match| match[:updates].count { |u| u[:sent] } }]
  end
)
