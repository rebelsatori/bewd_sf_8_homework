# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.
require 'pry'

class Game
	attr_accessor :attempt, :play, :secret_number
		def initialize(secret_number)
			@attempt = 3
			@secret_number = secret_number
		end
		def play
			puts "Guess the secret number!"
			while @attempt > 0
				player_guess = gets.chomp.to_i
				if player_guess == @secret_number.roll
					puts "Congradulations #{player_new.name} , you win!"
					@attempt = -1
				elsif player_guess < @secret_number.roll
					puts "Guess a higher number"
					@attempt = @attempt - 1
					puts "You have " + attempt.to_s + " attempts left"
				elsif player_guess > @secret_number.roll
					puts "Guess a lower number"
					@attempt = @attempt -1
					puts "You have " + attempt.to_s + " attempts left"
				end
			end
			if @attempt == 0
				puts "You are out of tries #{player_new.name}, you loose!  The secret number was " + @secret_number.roll.to_s
			elsif @attempt == -1
				puts "You have won Secret Number #{player_new.name}, the secret number was " + @secret_number.roll.to_s
			end
		end
end
