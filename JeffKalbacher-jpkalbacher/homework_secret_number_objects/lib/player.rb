# this class will likely be simple, keeping track of the user's name.

class Player
	attr_accessor :name
	def initialize
		puts "what is your name"
		@name = gets.chomp
	end
end
