# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game
	attr_accessor :number_of_guesses, :guess, :secret_num

	def initialize()
		@number_of_guesses = 0
		@guess = guess
		number = SecretNumber.new
		@secret_num = number.create_the_secret_number	
	end

	def counter
		puts "\n\n"
		if @number_of_guesses < 3
			puts "You have " + (3-@number_of_guesses).to_s + " guess(es) left!"
			make_a_guess
		else
			end_game(false)
		end
	end

	def make_a_guess
		puts "What's your guess?"
		guess = gets.to_i
		validate_guess(guess)
	end

	def validate_guess(guess)
		if guess.between?(1,10) == false
			puts "Enter a number between 1 and 10!"
			make_a_guess
		else
			if guess == @secret_num
				end_game(true)
			else
				if guess > @secret_num
					puts "Your guess is too high!"
				elsif guess < @secret_num
					puts "Your guess is too low!"
				end
				@number_of_guesses += 1
				counter
			end
		end
	end

	def end_game(win)
		if win == true
			puts "Congrats, you won!"
		else
			puts "Sorry, you lose! The correct number was " + @secret_num.to_s
		end
	end
end