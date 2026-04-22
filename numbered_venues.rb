# frozen_string_literal: true

venues = ['Court 1', 'Court 2', 'Court 3', 'Court 4']

venues.each.with_index(1) { |venue, idx| puts "#{idx}. #{venue}" }
