# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game

	# attr_accessor :player, :answer, :tries

	def initialize(player, secret)
		@player = player
		@answer = secret.answer
		@tries = 3
	end

	def run_game
		game_rules
		while @tries > 0
			guess_left
			get_guess
			check_guess
		end
		if @guess != @answer
			puts "You lost. Game over."
		end
	end
		

	def game_rules
		puts "You have three guesses to figure out what the secret number is, hint it is between 1 and 10."
	end

	def guess_left
		puts "Only #{@tries} left."
	end

	def get_guess
		puts "Let's have your guess?"
		@guess = gets.chomp.to_i
		@tries -= 1
	end

	def check_guess
		if @guess == @answer
			puts "Good work #{@player.name}, you guessed right. Game over."
			@tries = 0
		elsif @guess > @answer 
			puts "Too high, guess again."
		else 
			puts "Too low chico."
		end
	end
end
