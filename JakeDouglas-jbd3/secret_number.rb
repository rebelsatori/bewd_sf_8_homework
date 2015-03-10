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

#methods
def get_guess
	puts 'What\'s your guess?'
	guess = gets.chomp.to_i
	while guess < 2 || guess > 9
		puts 'That\'s not a number between 1 and 10! Try again!'
		guess = gets.chomp.to_i
	end
	guess
end

def guess_right
	puts 'You got it right!'
	puts 'Congratuations!'
end

def guess_wrong
	puts 'Nope! Try again!'
end

def game_over
	puts 'Sorry! Game over!'
end

# welcome the player
puts 'Welcome to Guess the Number!'
puts 'created by Jake Brandon Douglas'

# ask name / say hi
puts 'What\'s your name?'
player_name = gets.chomp
puts 'Hi ' + player_name + '!'

# tell them the rules
puts 'All you have to do is guess a number between 1 and 10! You get 3 tries, otherwise, someone kills your pet.'

# get random number between 1 and 10
r_number = 2 + rand(8)

# get guess
guess = get_guess

# if right -> win/end game / if wrong -> wrong/get guess
if guess == r_number 
	guess_right
else
	puts 'Wrong! Two more tries!'
	guess = get_guess
	#if right -> win/end game / if wrong -> wrong/get guess
	if guess == r_number 
		guess_right
	else
	puts 'Wrong! Last chance!'
	guess = get_guess
		#if right -> win/end game / if wrong -> wrong/end game
		if guess == r_number 
		guess_right
		else
		game_over
		puts 'The correct number was ' + r_number.to_s + '! Sorry about your pet :('
		end
	end
end













