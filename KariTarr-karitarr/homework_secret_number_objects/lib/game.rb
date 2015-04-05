# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game
	attr_accessor  :guess_count,  :secret_num, :players_guess, :guesses_left
	
	def initialize (guess_count)
		@guess_count = guess_count
		@secret_num = secret_num
		@players_guess = players_guess
		@guesses_left = guesses_left
	end

	def play_game
		#initialize a secret number instance and add it as an attribute of instance the game
		@secret_num = SecretNumber.new.number
		puts "Type your first Guess"
		#save the players guess as an attribute of the instance of the game
		while @guess_count < 3
			# increase the guess count by 1 each time it loops
			@guess_count += 1
			@guesses_left = 3 - @guess_count 
			# set g = to the value from the user and convert to an integer
			@players_guess = gets.chomp.to_i
			#if the the user value = the random number, exit the loop
			if @players_guess == @secret_num 
				puts "You win! The number was: " + @secret_num.to_s
				break
				#otherwise if the guess count is still less than three then tell the user if the value is too high or too low
			elsif @guess_count < 3  
				if @players_guess > @secret_num
					if @guesses_left == 1 
						puts @players_guess.to_s + ": is too high :(  LAST CHANCE!"
					else	
						puts @players_guess.to_s + ": is too high :( You have : " + @guesses_left.to_s + " guesses left"
					end
				else
					if @guesses_left == 1 
						puts @players_guess.to_s + ": is too low :( LAST CHANCE!"
					else 
						puts @players_guess.to_s + ": is too low :( You have : " + @guesses_left.to_s + " guesses left"
					end 
				end
				#if the guess count reaches 3, end the loop and display a message.
			else
				puts "You lose. The number was actually " + @secret_num.to_s
			end 
		end
	end

end