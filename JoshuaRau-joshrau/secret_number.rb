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

#Welcome the player to the game
puts "Welcome to the guessing a number game!"

#Let them know who created the game
puts "Do you want to play? (yes/no)"


decision = false
while decision == false
	play = gets.chomp
if play.to_s.downcase == "yes"
	puts "Awesome"
	decision = true
elsif play.to_s.downcase == "no"
	puts "please play with me... okay?"
else puts "answer yes or no please :)"
end
end

puts "This game was created by Josh Rau"

sleep 1

#Ask for the player's name and personally greet them by saying "hi Player_name!"

puts "What is your name friend?"
name = gets.chomp
sleep 1
puts "Hi "+name+"! Nice to meet you"
sleep 1

#Communicate the rules of the game
puts "Here are the rules of the game"
sleep 0.75
puts "I am thinking of a number between 1 and 10."
sleep 0.75
puts "You have three tries to guess the secret number."
sleep 0.75
puts "If you fail 3 times..."
sleep 0.75
puts "you lose and I win"
sleep 0.75

#for fun, ask then if they are ready to play
puts "Are you ready to play the game?"
decision = false
while decision == false
	play = gets.chomp
if play.to_s.downcase == "yes"
	puts "Awesome"
	decision = true
elsif play.to_s.downcase == "no"
	puts "please play with me... okay?"
else puts "answer yes or no please :)"
end
end

#Hardcode the secret Number
secret = 9

#Ask the user for their guess
#Verify if their guess is correct, if it is corrrect, congratulate them and end the game
#Let the player know how many guesses they have left
#If the player does not guess the answer in 3 tries let them know they lost and tell them the number

guessNumber = 3
while guessNumber > 0 
	puts "What do you think the secret number is?"
	guess = gets.chomp
if secret.to_i == guess.to_i
	puts "OMG, you won!! "+secret.to_s+" was totally my number!! Nice Job"
	sleep 0.5
	puts "Game Over"
	break
elsif secret.to_i != guess.to_i
	puts "I'm sorry, but you did not guess correctly"
	guessNumber -= 1
		if guessNumber > 1
		puts "You have "+guessNumber.to_s+" more guesses left..."
		else puts "You have "+guessNumber.to_s+" more guess left..."
		end
	end
end

if guessNumber.to_i < 1
	puts "Oh, jeez... it looks like you have lost"
	sleep 0.5
	puts "The secret number was "+secret.to_s
	puts "Game Over"
end	






