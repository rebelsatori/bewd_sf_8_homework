
###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################
puts "Hello, Welcome to secret number! My name is Stephanie. I created this game, just for you!"
puts "What's your name?"
name = gets.chomp 
puts "Hello, " + name + "!"
puts "You have 3 tries to guess my secret number."
puts "It's a number between 1 and 10..."
secret_number = rand(1..10)

	guesses_left = 3	

while guesses_left != 0 
	puts "What's your guess?"

	guess = gets.chomp.to_i
	guesses_left = guesses_left -1 	

	if guess == secret_number 
		puts "Congrats, you're a total winner!"
		break		
	else
		puts "Nope, you have " + guesses_left.to_s + " left"
	end
		
	if secret_number > guess 
		puts "P.S that number is too low, guess higher"
	else 
		puts "Try a higher number!"
	end

	if 	guesses_left == 0 
		puts "Nice try, but you lose... the secret number was #{secret_number}"
	end 	
end
