data = [
  {"id"=>"1", "properties"=>{"name"=>"Google", "stock_symbol"=>"GOOG", "primary_role"=>"company"}},
  {"id"=>"2", "properties"=>{"name"=>"Facebook", "stock_symbol"=>"FB", "primary_role"=>"company"}}
]

data.each do |result|
  name = result.dig("properties", "name")
  stock = result.dig("properties", "stock_symbol")
  id = result["id"]
  result["properties"].delete("primary_role")
  puts("#{name} - #{id} - #{stock}")
end

puts data