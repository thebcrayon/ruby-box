names = ['Linda', 'Bob', 'Gregory', 'Mike', 'Susan', 'Helen']
new_ary = []

names.each { |name| new_ary.append(name.concat(25.to_s)) }

p new_ary