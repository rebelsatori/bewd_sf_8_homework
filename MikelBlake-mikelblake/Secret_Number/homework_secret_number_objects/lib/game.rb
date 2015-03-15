# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game
	attr_accessor :answer

	def initialize
		@answer = (SecretNumber.new).answer
	end

	def play
		number_guesses = 0
		guesses_left = 2

		while  number_guesses < 3
			puts "Choose a number!"
			guess = gets.chomp.to_i

			if guess == @answer
				number_guesses = number_guesses + 3
				puts "Great guess! You win! The number was #{@answer}."
				break

			elsif guess > @answer
					puts "Nope, you guessed too high! You have #{guesses_left} guesses left."
					number_guesses = number_guesses + 1
					guesses_left = guesses_left - 1
				elsif guess < @answer
					puts "Nope, you guessed too low! You have #{guesses_left} guesses left."
					number_guesses = number_guesses + 1
					guesses_left = guesses_left - 1
				end
			end
	end
end
