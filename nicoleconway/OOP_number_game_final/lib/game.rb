# Nicole Conway number game
# This class holds most of the game logic and performs the following:
#   Welcome players and inform them of the game rules.
#   Initialize the Secret Number class.
#   Prompt the user to choose a number, verify if the user guessed correctly.
#   If the user guesses incorrectly let them know if they were too high or too low.
#   Monitor how many guesses the player has before the game is over.

class Game
  	def initialize()
    	@guesses_left = 3
    	@secret_number = 0
    	start_game
    	get_number
    	playGame
  	end

	def start_game
		puts "I am thinking of a secret number between 1 and 10. You have three tries to guess the secret number in order to win the game."	
	end

	def get_number
		#generate the random number to start the game
    	 num = SecretNumber.new
    	 @secret_number = num.createnum

   	end

   	def playGame
		while @guesses_left > 0
			puts "Guess the number: "
			guess = gets.chomp.to_i
			if guess < @secret_number
				@guesses_left -=1
				puts "Nope, too low.  You have #{@guesses_left} guesses left."
				check_to_end
			elsif guess > @secret_number
				@guesses_left -=1
				puts "Nope, too high.  You have #{@guesses_left} guesses left."
				check_to_end
			else
				puts "Correct! You win"
				@guesses_left == 0
				game_over
			end
		end
	end

	def check_to_end
		if @guesses_left == 0
			puts "You are out of guesses.  The secret number was #{@secret_number}."
			game_over
		end
	end

	def game_over
		puts "Play again? (Y/N)"
		answer=gets.chomp.upcase
		if answer == "Y"
			new_game = Game.new
		else
			puts "Thanks for playing!"
			exit
		end
	end
end

