puts 'What is your Username?'
puts 'Please enter!'
input = ''
while input != 'Mr00zie'
	#puts input
	input = gets.chomp
	if input == 'Mr00zie'
		puts 'Please continue!'
	elsif input != 'Mr00zie'
		puts "Try again you Loser!"
	end	
end