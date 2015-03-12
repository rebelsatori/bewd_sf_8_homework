# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.
=begin
class Game
attr_accessor :number_of_guesses, :guess, :secret_number

	def initialize
		@number_of_guesses = 3
		@guess = 0
		@player = Player.new
		@secret_number = Secret_number.new
	end

	def greet_player
		puts "Welcome, " + @player.player_name + ", to SECRET NUMBER"
		puts "You must guess a number between 1 and 10."
		puts "You only get three tries!"
	end

	def solicit_guess
			puts "You have #{@number_of_guesses} guesses left"
			puts "What is the secret number?"
			guess = gets.chomp.to_i
			@number_of_guesses -= 1
	end

	def judge_guess
		while number_of_guesses > 0
			if @guess == @secret_number then puts "You win!" && break
				elsif @guess > @secret_number then puts "Too high."
				elsif @guess < @secret_number then puts "Too low."
			end
		end
		if number_of_guesses == 0 then puts "You lose :("
		end
	end
		
	def play 
		greet_player
		solicit_guess
		judge_guess
	end


end
=end

class Game
attr_accessor :number_of_guesses, :guess

	def initialize
		@number_of_guesses = 3
		@guess = 0
		SecretNumber.new ## I can't figure out why my number isn't working :()
		@player = Player.new
	end

	def greet_player
		puts "Welcome, " + @player.player_name + ", to SECRET NUMBER"
		puts "You must guess a number between 1 and 10."
		puts "You only get three tries!"
	end

	def play
		greet_player
		while @guess != @secret_number && @number_of_guesses > 0
			puts "You have #{@number_of_guesses} guesses left"
			puts "What is the secret number?"
			guess = gets.chomp.to_i
			@number_of_guesses -= 1
				if @guess == @secret_number then puts "You win!"
				elsif @guess > @secret_number then puts "Too high."
				elsif @guess < @secret_number then puts "Too low."
				end
			end
		if guess != @secret_number then puts "You lose."
		end
	end



end
