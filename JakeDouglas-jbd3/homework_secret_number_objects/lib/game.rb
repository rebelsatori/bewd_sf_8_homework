# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game
	attr_reader :r_number, :guess

	def initialize(r_number)
		@r_number = r_number
		@guess = guess
	end

	def welcome
		puts 'Welcome to Guess the Number!'
		puts 'created by Jake Brandon Douglas'
		puts ' '
		puts 'All you have to do is guess a number between 1 and 10! You get 3 tries, otherwise, someone will kick your pet.'
	end

	def get_guess
		@guess = ask_user 'What\'s your guess?'
		@guess = @guess.to_i
		@guess
	end

	def check_guess
		tries = 0
		while tries < 2
			if @guess == @r_number
				tries = tries + 3
				puts 'You got it right!'
				puts 'Congratuations!'
			else
				puts 'Nope! Try again!'
				get_guess
				tries = tries + 1
			end
		end
		puts "Game over!"
	end
end
