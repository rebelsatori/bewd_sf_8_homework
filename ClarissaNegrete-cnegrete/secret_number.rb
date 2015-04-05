def secret_number(secret_num_guess, num_guesses)
	sec_num = 6
	num_guesses = 3
	if secret_num_guess == sec_num
		puts 'You\'re right, genius!'
		puts 'You guessed ' + secret_num_guess.to_s + ' and ' + sec_num.to_s + ' was the right number!'
		abort
	end

	if secret_num_guess < sec_num && num_guesses > 1
		puts 'Too low, bro. Try again!'
	elsif secret_num_guess > sec_num && num_guesses > 1
		puts 'Too high, guy. Try again!'
	end
end
		

puts 'Welcome to the secret number game. This game was created by Clarissa Negrete.'
puts 'Please type your name and press the Enter key'
name = gets.chomp
puts 'Welcome ' + name + '!'
puts 'Directions: You will have 3 tries to guess a number between 1 and 10. If you guess the number in less than or equal to 3 tries, you win!'
puts 'Do you understand?'
answer = gets.chomp
if (answer == 'yes' or answer == 'Yes')
	puts 'Good! Let\'s get started.'
else
	puts 'Please go away.'
end

puts ''

3.times do |num_guesses|

	puts 'You have used ' + num_guesses.to_s + ' tries.'
	puts 'Please make a guess by typing a number and pressing the Enter key.'
	secret_num_guess = gets.chomp.to_i


	secret_number(secret_num_guess, num_guesses)


end
sec_num = 6
puts 'Thanks for being a good sport. Come back if you\'re that bored!'
puts 'The answer was ' + sec_num.to_s + '.'

