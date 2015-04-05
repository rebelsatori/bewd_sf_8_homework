# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game
	attr_accessor :player, :guess, :secret_number, :chances, :width

	def initialize player
		@player = player
		@chances = 3
		@width = 50
	end

	def play
		puts ('----------------------------------------------------').center(@width)
		puts ('Rules of the Secret Number Game').center(@width)
		puts '- There will be a secret number between 1 and 10.'
		puts '- You will need to guess what that number is.'
		puts '- You get only have 3 tries before the game ends.'
		puts ('----------------------------------------------------').center(@width)
		secret = SecretNumber.new
		secret.generate_number
		@secret_number = secret.secret_number
		guess_number
		while @guess != @secret_number
			if invalid
				guess_number
			end
			tries
			too_low
			too_high
			guess_number
		end
	end

	def guess_number
		puts 'Please choose a number between 1 and 10.'	
		@guess = gets.chomp.to_i
		winner
		puts ('----------------------------------------------------').center(@width)
	end

	def winner 
		if @guess == @secret_number
			abort('Woohoo, you won the game! Good job!')
		end
	end

	def tries
		if @chances == 1
			abort('Sorry, you lost the game! The secret number was... ' + @secret_number.to_s)
		else
			@chances -= 1
		end
	end

	def too_high
		if @guess > @secret_number
			puts('You guessed too high.'.ljust(@width/2) + ('# of tries left: ' + @chances.to_s).rjust(@width/2))
		end
	end

	def too_low
		if @guess < @secret_number
			puts('You guessed too low.'.ljust(@width/2) + ('# of tries left: ' + @chances.to_s).rjust(@width/2))
		end
	end

	def invalid
		while @guess.between?(1,10) == false
			puts 'That is not a valid guess.'
			guess_number
		end
	end
end
