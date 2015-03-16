class Game
attr_accessor :number_of_guesses, :guess, :number

	def initialize
		@number_of_guesses = 3
		@guess = 0
		@number = Secret_number.new.secret_number
		@player = Player.new.player_name
	end

	def greet_player
		puts "Welcome, #{@player},to SECRET NUMBER"
		puts "You must guess a number between 1 and 10."
		puts "You only get three tries!"
	end

	def solicit_guess
		puts "You have #{@number_of_guesses} guesses left"
		puts "What is the secret number?"
		@guess = gets.chomp.to_i
		@number_of_guesses -= 1
	end

	def judge_guess
		if @guess > @number
			puts "Too high." 
		elsif @guess < @number
			puts "Too low."
		end
	end

	def play
		greet_player
			while @number_of_guesses > 0 && @guess != @number
				solicit_guess
				judge_guess
			end
		if @guess == @number then puts "You win!"
			else puts "Sorry, the number was #{@number}"
		end
	end
			
	

end

