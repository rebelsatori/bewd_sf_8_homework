puts ' '
puts 'Hello! Welcome to Secret Number! My name is Raymond and I am the creator and host of this game. What is your name?' #intro
puts ' '
pname = gets.chomp
puts ' '
puts 'Hello ' + pname + '! The rules are fairly simple.' 
puts 'You have 3 attempts to guess a random number betwenn 1 and 10.'
puts 'To start, just make your first guess and press enter. Good Luck' #intro/rules
secnum = (rand(10)+1).to_i
puts secnum
guess = gets.chomp.to_i	 	#Functionality: firstguess
count = 1.to_i

while count!=3 #loops while wrong guess
	
	if secnum != guess
	count = count+1	
	puts 'Ugh that was not the right guess. Try again'
	guess = gets.chomp.to_i
	elsif guess == secnum 
	puts 'Good job! You chose the right number!!'
	count= count+3
	end
	
	if count==3
		puts 'i\'m sorry, you chose wrong.'
	end	
end