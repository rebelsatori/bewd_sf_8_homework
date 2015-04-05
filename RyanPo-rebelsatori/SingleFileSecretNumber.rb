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

def hint(guess, secret_number)
	if guess > secret_number
		puts "Oh dear, don't be so vain! Try a lower number"
	else guess < secret_number
		puts "No need to be too modest. Aim your arrow higher, dear archer of our secret number game!"
	end 
end

puts "~~Welcome to the Fantastic Secret Number Game!!!~~"
puts "This game was created by Ryan Oliver Po!"

puts "May I kindly ask your name please?"
name = gets.chomp 
puts "Hello #{name} and welcome to our Secret Number game!"

puts "So here in this Secret Number game, all you have to do is guess a number between 1-10!"
puts "You only have a maximum of 3 tries! The game will tell you if you're off by a high guess or a low one."

tries = 3

secret_number = rand(1..10)
puts "The secret number is #{secret_number}"

puts "What number between 1 to 10 is your guess?"
guess = gets.chomp.to_i
tries -= 1

if guess == secret_number
	puts "Unbelievable! You won! It looks like it was no sweat for you!"
else guess != secret_number
	puts "Oh noooo! You need to try again! You have 2 more tries!"
	hint(guess, secret_number)
end

puts "Again, what number between 1 to 10 is it? Exciting!"
guess = gets.chomp.to_i
tries -= 1

if guess == secret_number
	puts "Wow! This is your second try! But you won! You got it!"
else guess != secret_number
	puts "Ohhh deaaar! You only have one more try left!"
	hint(guess, secret_number)
end

puts "Now this is the final score! The moment of truth! Final try! What number is it between 1 to 10?"
guess = gets.chomp.to_i
tries -= 1

if guess == secret_number
	puts "AT LONG LAST! YOU GOT IT!!! Here take your medal! You braved through the game valiantly and you won!"
else guess != secret_number
	puts "Oh no! *Sniff* It looks like the end of the game, better luck next try!"
end












