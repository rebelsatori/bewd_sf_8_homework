
# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game
	attr_accessor :guess_number, :guesses_left, :guess, :compare, :new_number
	def initialize
		@guess_number = 1
		@guesses_left = guesses_left
		@guess = guess
		@compare = compare
		@new_number = SecretNumber.new
	end

	def rules
		puts "You must guess a number between 1 and 10 and you only have 3 tries to do so."
	end

	def play
		puts "What do you think the number is?"
		@guess = gets.to_i
		check_guess
	end

	def check_guess
		# Calculate the guess number and number of guesses left
		@guesses_left = 3 - @guess_number
		@guess_number = @guess_number + 1

		if @guess == @new_number.secret_number
			puts "Congratulations! You guessed the secret number."
		elsif @guesses_left == 0
			puts "Sorry, you have lost and the game is over. The secret number was #{new_number.secret_number.to_s}."
		else
			if @guess > @new_number.secret_number
				@compare = "high"
			elsif @guess < @new_number.secret_number
				@compare = "low"
			end	
			puts "Sorry, you guessed too #{compare}. You have #{guesses_left.to_s} more guesses before the game is over."
			play
		end
	end
end
