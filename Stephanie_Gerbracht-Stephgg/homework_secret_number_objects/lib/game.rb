# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game 


	def initialize(player) 
		@name = player.name 
		@sec_number = SecretNumber.new.sec_number 
		@attempts = 3
	end 


	def run_game 
		rules

		while @attempts > 0 	
			guess_prompt
			check_guess
			
			if @guess == @sec_number
				break	
			end

			guesses_left 
			if @attempts == 0 
				puts "Thanks for playing, but you lose :("
			end		
		end
	end


	#rules
	#guess prompt
	#guesses left

	def rules
			puts "Hello, #{@name} I'd like you to guess my secret number. You have 3 tries. It's between 1 and 10! "
	end		

	def guess_prompt
		puts "What's your guess?"
		@guess = gets.chomp.to_i	
		@attempts = @attempts-1
	end
	
	def check_guess
		if @guess == @sec_number 
			puts "Congrats!! You're a huge winner!"
		
		elsif @guess > @sec_number
			puts "Close, guess lower"

		else @guess < @sec_number
			puts "Nice try, guess higher"	
		end	
	end	

	def guesses_left	
			puts "You have #{@attempts} left" 

	end





end


















