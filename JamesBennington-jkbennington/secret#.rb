puts 'Welcome!'
puts 'And your name is?'
name = gets.chomp
puts 'Hello ' + name + '.'
puts 'So here\'s the game:'
puts 'You have 3 guesses to guess a random number between 1 and 10'
puts 'Good luck!'

secret_number = rand(10)
guesses_left=3


while true
	
	if guesses_left == 0
		puts 'Sorry ' + name + ', you\'ll never make it as a professional guesser. The number was ' + secret_number.to_s + '.'
	break
	end

	puts 'Your guess?'
	guess = gets.chomp

	if guess.to_i == secret_number
		puts 'Woohoo! You da champ' + name.capitalize + '!'
	break

	elsif guess.to_i > secret_number
		guesses_left = guesses_left - 1
		if guesses_left == 1
		puts 'Little lower, last chance!'
		else
		puts 'Mmmm... litttttle lower You have ' + guesses_left.to_s + ' guesses left.'
	    end
	
	elsif
		guesses_left = guesses_left - 1
		if guesses_left==1
		puts 'Little bit higher! Come on! Last chance!'
		else
		puts 'Come on just a little higher! You have ' + guesses_left.to_s + ' guesses left.' 
	    end
	end

end



		




	
