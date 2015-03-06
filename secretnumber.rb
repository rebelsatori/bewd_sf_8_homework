puts ' '
puts 'Hello! Welcome to Secret Number! My name is Raymond and I am the creator and host of this game. What is your name?' #intro
puts ' '
pname = gets.chomp
puts ' '
puts 'Hello ' + pname + '! The rules are pretty simple.' 
puts 'You have 3 attempts to guess a random number betwenn 1 and 10.'
puts 'To start, just make your first guess and press enter. Good Luck' #intro/rules
secnum = rand(1..10).to_i
puts secnum
guess = gets.chomp.to_i	 	#Functionality: firstguess
attempts = 1.to_i
tries = 3.to_i

while tries!=0 #loops while wrong guess
	
	while secnum !=guess
		if secnum<guess
			attempts = attempts+1
			tries = tries-1	
			puts 'Too High!'
			puts 'You have ' + tries.to_s + ' attempts left. Give it another try!'
			guess = gets.chomp.to_i
		
		elsif secnum> guess
			attempts = attempts+1
			tries = tries-1
			puts 'Too Low!'
			puts 'You have ' + tries.to_s + ' attempts left. Give it another try!'
			guess = gets.chomp.to_i	
		end 
	end

	if guess == secnum 
	puts guess.to_s + ' Was the right number! Good job!!' 
	tries == 0
	end

	if tries == 0
		puts 'Nice Try ' + pname + ', but better luck next time!'
		puts 'The numebr you were looking for was ' + secnum.to_s
		tries == 0
	end
end

