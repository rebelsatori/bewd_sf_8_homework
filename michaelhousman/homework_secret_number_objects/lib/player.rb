
# this class will likely be simple, keeping track of the user's name.

class Player
	attr_accessor :player_name

	def name
		puts "What is your name?"
		player_name = gets.chomp
		puts "Hi, " + player_name + "!"
	end
end
