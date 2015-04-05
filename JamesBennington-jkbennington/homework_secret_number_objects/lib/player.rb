# this class will likely be simple, keeping track of the user's name.
class Player
	attr_accessor :name
		def initialize 
			@name = name
			
		end
		
		def ask_user
			puts 'Give me your name and we\'ll play a game.'
			name = gets.chomp

			puts 'Greetings' + name.
		end
	end
end