# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game

	def initialize(player)
			@name = player.name		
			@secnum = Secretnumber.new.secnum.to_i
			@guesses_left = 3
	end

	def run_game
		rules
		while @guesses_left > 0
			get_guess
			check_guess	
			attempts
		end	
		end_game
	end

	def rules	
		puts "Hello #{@name}. The rules of this game are very simple."
		puts "A number is chosen at random. You have 3 attempts to guess"
		puts "the correct number. Make your first guess: "
	end	

	def get_guess
		@guess = gets.chomp.to_i
		@guesses_left -= 1
	end

	def attempts 
			if @guesses_left == 1
				puts "You have #{@guesses_left} attempt left!"
			else  
				puts "You have #{@guesses_left} attempts left!"
			end
	end

	def check_guess
		while @guess != @secnum && @guesses_left >0
			if @guess > @secnum
				puts "Too high, #{@name}"
				# @guesses_left -= 1
			elsif @guess < @secnum
				puts "Too low #{@name}"
				# @guesses_left -= 1
			end
			attempts
			get_guess
		end
	end

	def end_game
		if @guess == @secnum
			puts "#{@guess} was the right choice! Good job, #{@name}!"
		elsif @guesses_left <= 0
			puts "The correct answer was #{@secnum}. Better luck next time, #{@name}."
		end
	end
end
