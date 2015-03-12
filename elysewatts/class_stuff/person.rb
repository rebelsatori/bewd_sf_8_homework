=begin

# the class version

person = { name: 'Eric', age: 25, address: 'Oakland' }

def greet(person)
	"Hi, my name is #{person[:name]}"
end

def share_address(person)
	"My addy is #{person[:address]}"
end

=end



# turn this into a class

class Person

attr_accessor :name, :age, :address


	def greet
		"Hi, my name is #{@name}"
	end

	def share_address
		"My addy is #{@address}"
	end

end

