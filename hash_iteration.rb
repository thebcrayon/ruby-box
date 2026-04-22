# frozen_string_literal: true

h = {
  Dad: 'Justin',
  Mom: 'Tonya',
  Children: %w[Riley Landon Monroe]
}

h.each_key { |key| puts(key) }
h.each_value { |key| puts(key) }

h.each_pair { |k, v| puts("#{k}: #{v}") }
