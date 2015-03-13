person = { name: 'Eric', age: 25, address: 'Oakland' }

def greet(person)
  "Hi, my name is" + person[name:]
end

def share_address(person)
  "My address is {person['2222 South]}"
end

puts greet(person)
puts share_address(person)
