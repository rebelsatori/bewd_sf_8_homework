# this class will likely be simple, keeping track of the user's name.
class Player
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def intro
		puts "Hi #{@name}!"
	end
end
