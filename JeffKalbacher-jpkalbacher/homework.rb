

random = rand(10)
guess_count = 3

puts "Welcome to the secret number game. My name is Jeff, and I created the game. \n What\'s your name?"
name = gets.chomp
puts "Hi " + name + "! Here are the rules of the game. \n You have to guess an integer between 1 and 10. You only have 3 tries to do so. \n Do you have any questions?"

answer = gets.chomp.downcase

if answer == "yes"
	puts "Too bad! Let's get started"
else
	puts "Great, let's get started!"
end

guesses = 0
while guesses < guess_count
	puts "what\'s your guess?"
	guess = gets.chomp.to_i

	if guess > random
		puts "too high, please guess again"
	elsif guess < random
		puts "too low, please guess again"
	elsif guess == random
		puts "you nailed it"
		break
	end
	guesses = guesses + 1
	puts guesses
	if guesses == 3
		puts "You lose the game."
	end
end



