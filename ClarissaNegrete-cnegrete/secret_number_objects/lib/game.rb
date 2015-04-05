# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game
	attr_accessor :guesses, :snumber, :player
	def initialize(player)
		@guesses = 3
		@player = player
		@snumber = SecretNumber.new
	end

	def start
		puts 'Directions: You will have 3 tries to guess a number between 1 and 10. If you guess the number in less than or equal to 3 tries, you win!'
		puts 'Do you understand?'
		answer = gets.chomp
			if (answer == 'yes' or answer == 'Yes')
				puts 'Good! Let\'s get started.'
			else
				puts 'Please go away.'
			end

			puts ''

		2.downto(0) do |guesses|

			
			puts 'Please make a guess by typing a number and pressing the Enter key.'
			guess = gets.chomp.to_i

			if guess < snumber.to_i 
			puts 'Too low, bro. Try again!'
			elsif guess > snumber.to_i 
				puts 'Too high, guy. Try again!'
			else
				puts 'You\'re right, genius!'
				exit
			end
			puts "you have #{guesses} guesses left" 
		end
		puts "game over"
	end		
end
