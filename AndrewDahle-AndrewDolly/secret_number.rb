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


secret_number = 5
puts 'Want to play a game? Tell me old friend, what do they call you?'
player_name = gets.chomp
puts ''
puts 'ok, ' + player_name + ' lets do this!'
puts 'I am thinking of a number between 1 and 10, give me your best guess?!'
guess = gets.chomp.to_i

	if guess > secret_number
		puts 'Too high, my friend, give you two more chances...next guess?'
	
	elsif guess < secret_number
		puts 'Too low, amigo, give you two more chances...next guess?'
	
	else 
		puts 'Super freaking lucky guess, but correct. That is the end of this game I guess.'
end

puts ''
puts 'Ok here we go, second guess?'
guess = gets.chomp.to_i

	if guess > secret_number
		puts 'Too high...last guess?'
	
	elsif guess < secret_number
		puts 'Too low, amigo...last guess?'
	
	else 
		puts 'Finally, correct. That is the end of this game I guess.'
end

puts ''
puts 'Moment of truth, last guess?'
guess = gets.chomp.to_i

	if guess > secret_number
		puts 'NOPE. Too high...you lost. The number was ' + secret_number.to_s + '.'
		puts ''
	
	elsif guess < secret_number
		puts 'NOPE. Too low...you lost. The number was ' + secret_number.to_s + '.'
		puts ''
	
	else 
		puts 'YUP. Finally, correct. That is the end of this game I guess.'
		puts ''
end

