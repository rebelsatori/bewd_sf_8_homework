# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game
	attr_accessor :guesses_left, :player, :secret_number
	 def initialize (guesses, player, secret_number)
	 	@guesses_left = 3
	 	@player = player
	 	@secret_number = SecretNumber.new

	 end
	end

	def start
		puts 'You have 3 guesses to guess a number between 1 and 10'
		puts 'Ready to play?'
		answer = gets.chomp
			if answer == 'Yes' ; answer == 'yes'
				puts 'Let\'s begin.'
			else
				puts 'Too bad.'
	        end
	end

			
		while true
	
		if @guesses_left == 0
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
	
	
	    end

end

end

		# 3.times do |guesses|

		# 	puts 'Guess?'
			
		# 	if guess < secret_number.to_i
		# 	puts 'What kind of guess is that, higher numbers are better numbers.'
			
		# 	elsif guess > secret_number.to_i
		# 		puts 'My estimating that you\'re over guesstimating.'
		# 	else
		# 		puts 'Lucky guess!'
		# 		exit
		# 	end     