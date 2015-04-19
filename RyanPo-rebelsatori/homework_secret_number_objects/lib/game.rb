class Game
attr_accessor :number_of_guesses, :guess, :number


	def initialize
		@number_of_guesses = 3
		@guess = 0
		@number = Secret_number.new.secret_number
		@player_name = Player.new.player_name
	end

	def greet_player
		puts "









		                   Welcome #{@player_name}!

		            to the Secret Number Game!! 

		                    BUMP BUMP! 

		            All you have to do is guess 

		             a number. Between 1 - 10!  

                               You only get 3 chances




		"
	end

	def ask_guess
		puts "
  		             You have #{@number_of_guesses} chances left. 
 

   	   	             What is the Secret Number?


		"
		@guess = gets.chomp.to_i
		@number_of_guesses -= 1
	end

	def hint_guess
		puts "                               Too high, aim lower.


		" if @guess > @number
		puts "                               Too low, aim higher.


		" if @guess < @number
	end

	def play
		greet_player
		while @number_of_guesses > 0 && @guess != @number
			ask_guess
			hint_guess
		end
		puts "                                     VICTORY!!



		" if @guess == @number			
		puts "                               Sorry, the number was actually #{@number}



		" if @guess != @number
	end
			
	

end
