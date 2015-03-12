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

puts "Would you like to play a game?" ## Throwback to one of my favorite movies: War Games
play = gets.chomp
if play.downcase == "yes"
	puts "Welcome to the secret number game by Michael G. Housman!"
	puts "What is your name?"
	player_name = gets.chomp
	puts "Hi, " + player_name + "!"
	puts "You must guess a number between 1 and 10 and you only have 3 tries to do so."
	puts "Are you ready to begin?"
	start = gets.chomp
	while start.downcase != "yes"
		puts "What about now?"
		start = gets.chomp
	end
	secret_number = 7
	guess_number = 1
	puts "What do you think the number is?"
	guess = gets.to_i
	while guess != secret_number && guess_number < 3
		guesses_left = 3 - guess_number
		guess_number = guess_number + 1
		if guess > secret_number
			compare = "high"
		elsif guess < secret_number
			compare = "low"
		end
		puts "Sorry, you guessed too " + compare + "."
		puts "You have " + guesses_left.to_s + " more guesses before the game is over.  Please enter another number."
		guess = gets.to_i
	end
	if guess == secret_number
		puts "Congratulations! You guessed the secret number."
	else
		puts "Sorry, you have lost and the game is over. The secret number was " + secret_number.to_s + "."
	end
else
	puts "You're not very fun. Good bye!"
end

