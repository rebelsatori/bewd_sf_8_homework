# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.
class Game
	attr_accessor :number, :name, :guess

	# start game with secret number
	def initialize(name)
		@number = SecretNumber.new
		@name = name
		@num_guesses = 3
	end


	# game play
	def play
		2.downto(0) do |num_guesses|
			puts "What is your guess?"
			guess = gets.strip.to_i

			#verify input
			while guess.to_i == 0
  			puts "Please enter a number and press enter."
  			guess = gets.strip.to_i
			end

			# increment guess count
			@num_guesses = @num_guesses - 1

			# check guess
			if guess == @number.to_i
				puts "Congrats, you won #{@name.pname}!!! Nice job with the correct guess of #{@number.to_i}!"
				exit
			elsif guess > @number.to_i
				puts "Close, but you are too high. You have #{@num_guesses} left."
			else
				puts "Close, but you are too low. You have #{@num_guesses} left."
			end
		end

		puts "Game over #{name.pname}. The secret number was #{@number.to_i}."
	end
end
