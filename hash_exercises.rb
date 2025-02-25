family = {
  :uncles => ["bob", "joe", "steve"],
  :sisters => ["jane", "jill", "beth"],
  :brothers => ["frank","rob","david"],
  :aunts => ["mary","sally","susan"]
}

# siblings = family.select do |k, v|
#   (k == :sisters) || (k == :brothers)
# end.values.flatten

family.each_key { |k| p k }
family.each_value { |v| puts v.flatten}
family.each { |k, v| puts "Key: #{k} Value: #{v}"}