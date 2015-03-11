secret_number = 7
attempts = 2
guess = 3




puts 'Welcome to the guess the Secret Number game!
This game was created by Andrew'

puts 'What is you name?'

# name = gets.chomp.to_s
# puts "Welcome' #{name}!"

# puts "Great #{name} lets get started.  The rules are simple.  You have 3 tries to guess
# the secret number.  The range is from 1 to 10.  Good luck!"

puts 'what is your first guess?'
guess_num = gets.chomp.to_i

#3.times.each do |x|

while attempts > 0

	if guess_num == secret_number
		puts "Correct you are a WINNER!"
		break
	
	elsif guess_num < secret_number
		puts "You are too low!"

	else guess_num > secret_number
		puts "You are too high!"
	end

	puts "Please try again. You have #{attempts} left."
	guess_num = gets.chomp.to_i
	attempts = attempts -1

	if attempts == 0
		puts "You have exceeded the number of attempts LOSER!"
	end 


	#guess = gets.to_i

	# if guess = attempts -1
	# 	puts "You have #{guess} tries left!!"
	# elsif guess = 0
	# 	puts "GAME IS OVER LOSER!!!!!!"
	# 	break
	# end
end





