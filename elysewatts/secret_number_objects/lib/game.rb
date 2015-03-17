class Game
attr_accessor :number_of_guesses, :guess, :number


	def initialize
		@number_of_guesses = 3
		@guess = 0
		@number = Secret_number.new.secret_number
		@player_name = Player.new.player_name
	end

	def greet_player
		puts "Welcome, #{@player_name},to SECRET NUMBER"
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
		puts "Too high." if @guess > @number
		puts "Too low." if @guess < @number
	end

	def play
		greet_player
		while @number_of_guesses > 0 && @guess != @number
			solicit_guess
			judge_guess
		end
		puts "You win!" if @guess == @number			
		puts "Sorry, the number was #{@number}" if @guess != @number
	end
			
	

end

