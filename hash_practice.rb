# frozen_string_literal: true

family = {  uncles: %w[bob joe steve],
            sisters: %w[jane jill beth],
            brothers: %w[frank rob david],
            aunts: %w[mary sally susan] }

siblings = family.select { |key, value| value if %i[sisters brothers].include?(key) }

p siblings.values.flatten
