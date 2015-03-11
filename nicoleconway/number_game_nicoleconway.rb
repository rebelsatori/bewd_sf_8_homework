# Nicole Conway
# Guess the number game - BEWD Homework
# 03/09/15

secret_number = rand(1..10)
num_guesses = 0
win = false

puts "Welcome to the number guessing game by Nicole Conway!"
puts "What is your name?"
player_name = gets.chomp
puts "Welcome " + player_name
puts "I am thinking of a secret number between 1 and 10.  You have three tries to guess the secret number in order to win the game."

while !win && num_guesses < 3
	puts "Guess the number: "
	guess = gets.chomp.to_i
	if guess < secret_number
		num_guesses +=1
		puts "Nope, too low.  You have " + (3 - num_guesses).to_s + " guesses left."
		if num_guesses == 3
			puts "You are out of guesses.  The secret number was " + secret_number.to_s
		end
	elsif guess > secret_number
		num_guesses +=1
		puts "Nope, too high.  You have " + (3 - num_guesses).to_s + " guesses left."
		if num_guesses == 3
			puts "You are out of guesses.  The secret number was " + secret_number.to_s
		end
	else
		puts "Correct! You win"
		win = True
	end
end


