#greet the player; get their name; tell them the rules
puts "I'm Jacob. SHALL WE PLAY A GAME?"
puts "What's your name?"
	player_name = gets.chomp
puts "Hi, #{player_name}."
puts "You must guess a number between 1 and 10.  You will only have three tries to correctly guess the number.  Choose wisely."


#generate the secret number and allow only three guesses
secret = rand(1..10).to_i
remaining_guesses = 3

#only do this if the player has available guesses
while remaining_guesses > 0 
	puts "What is your guess?"
	guess = gets.chomp
	#Program craps out if the player breaks the rules and inputs a word instead of a number via Integer()
	if Integer(guess) == secret
		puts "Congratulations, you've won the game!"
		break 		
	elsif Integer(guess) > secret 
		remaining_guesses = remaining_guesses - 1
		#I'm sure there's a better way to do this, but this is the only way 
		#I was able to have it not provide feedback after the last guess
		unless  remaining_guesses == 0
			puts "Guess lower.  Guesses remaining: #{remaining_guesses}."
		end	
	elsif Integer(guess) < secret 
		remaining_guesses = remaining_guesses - 1
		unless  remaining_guesses == 0	
			puts "Guess higher.  Guesses remaining: #{remaining_guesses}."
		end		
	end

	#let the player know that they're terrible at my game
	if remaining_guesses == 0
		puts "You're out of guesses; game over. The secret number was #{secret}."
	end	
end	
	





















