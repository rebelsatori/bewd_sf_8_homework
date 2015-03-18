# this class will likely be simple, keeping track of the user's name.
class Player
	attr_accessor :name

	def initialize
		@name = name
	end

	def get_name
		puts "What's your name?"
		@name = gets.chomp
	end

	def say_hi
		puts "Hi there, #{name}!"
	end
end
