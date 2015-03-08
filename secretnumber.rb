#Introduction and Rules
puts ' '
puts "Welcome to Secret Number! My name is Raymond and I am the creator and host of this game. \nWhat is your name?"
puts ' '
pname = gets.chomp
puts ' '
puts 'Hello ' + pname + '! The rules are pretty simple.' 
puts 'You have 3 attempts to guess a random number betwenn 1 and 10.'
puts 'To start, just make your first guess and press enter. Good Luck!' 

#Variables
secnum = rand(1..10).to_i
attempts = 3

while attempts>0
	#Number of attempts player has left
	if attempts < 3 && attempts != 1
		puts "You have #{attempts} attempts left. Give it another try!"
	elsif attempts == 1
		puts "You have #{attempts} attempt left. Give it another try!"	
	end

	guess = gets.chomp.to_i

	#Correct Guess/Ends Game
	if secnum == guess				
		puts guess.to_s + ' Was the right number ' + pname + '. Good job!!' 
		break
	#Incorrect guess/Too high or too low	
	else		
		if secnum < guess
			puts 'Too High!'
		else
			puts 'Too Low!'
		end			
		attempts = attempts-1
	end
end

#Last words for losers
if secnum != guess
	puts 'Nice Try ' + pname + ', but better luck next time!'
	puts 'The number you were looking for was ' + secnum.to_s + '.'
end	



