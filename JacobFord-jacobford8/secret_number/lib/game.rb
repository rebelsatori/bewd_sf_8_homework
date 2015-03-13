# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game
#this is actually (SecretNumber.new.secret, player) from main!
	def initialize(create_secret, player)
		@secret = create_secret
		@player_name = player.player_name
	end
=begin I'll leave this here in case I want to validate my data later on
	def show_info
		puts "secret number"
		puts @secret
		puts "secret number class"
		puts @secret.class
		puts "player name"
		puts @player_name
		puts "player name class"
		puts @player_name.class
	end
=end


	def play
		guesses = 3

		while guesses > 0 

			#because it's important to use our words correctly
			guesses == 1 ? (grammar = 'guess') : (grammar = 'guesses')
			guesses < 3 ? (question = 'again') : (question = 'a number between 1 and 10')
			puts "#{@player_name}, please guess #{question}."
			player_guess = gets.chomp.to_i
			
			if player_guess == @secret && player_guess.between?(1, 10) 
				puts "Congratulations!  You've won the game."
				#end the while loop now
				break 
			elsif player_guess < @secret && player_guess.between?(1, 10)
				guesses -= 1
				#we don't want feedback after the last guess
				unless guesses == 0 
					puts "You guessed too low.  You have #{guesses} #{grammar} left."
				end	
			elsif player_guess > @secret && player_guess.between?(1, 10)
				guesses -= 1
				unless guesses == 0
					puts "You guessed too high.  You have #{guesses} #{grammar} left."
				end	
			else 
				guesses -= 1 
				#input should be a number and betwee 1 & 10
				puts "Please enter a valid number.  For that, I'm taking away a guess.  You have #{guesses} #{grammar} left."
				
			end
			
		end	

		if guesses == 0
			puts "You're out of guesses; game over.  The secret number was #{@secret}."
		end	
	end				
end
