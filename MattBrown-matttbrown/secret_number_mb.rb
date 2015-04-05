puts "Welcome to the Secret Number Game!\nCreated by Matt Brown for the GA BEWD Class\n\n"

puts "What's your name?"
name = gets.chomp
puts "Well hello there, " + name + "!\n\n"

puts "So, here's how you play Secret Number: you have three tries to guess a number between 1 and 10.  Sounds fun?  Let's play!\n\n"

secret_number = rand(1..10)
number_of_guesses = 0

while number_of_guesses < 3
	puts "What's your guess?"
	guess = gets.to_i
	if guess.between?(1,10) == false
		puts "Enter a number between 1 and 10!"
	else
		if guess == secret_number
			number_of_guesses = number_of_guesses + 3
			win = true
		else
			if guess > secret_number
				puts "Your guess is too high!"
				number_of_guesses = number_of_guesses + 1
			elsif guess < secret_number
				puts "Your guess is too low!"
				number_of_guesses = number_of_guesses + 1
			end
		end
	end
end

if win == true
	puts "Congrats, you won!"
else
	puts "Sorry, you lose! The correct number was " + secret_number.to_s
end