puts ''
puts 'Welcome to an Incredible Guesing Game'
puts 'Created by Marisa Mascarenhas'
puts ''
puts 'Please enter your name'
Player_name = gets.chomp
puts 'Hi, ' + Player_name + '! Hope you enjoy this game!!'
puts''
puts 'Before you start let me explain the rules'
puts 'I have chosen a number between 1 & 10'
puts'You need to guess the number I have chosen '
puts'You will get some hints and three tries to guess the number'
puts''
the_number = rand(10) + 1  ## random number between 1 & 10 is generated
##puts the_number  ## just for testing purposes
tries_counter = 1
while tries_counter < 4
	tries_counter=tries_counter + 1
	 puts 'Enter a number you guess between 1 & 10'
	 guess_number = gets.chomp.to_i
	 ##puts guess_number ## just for testing purposes
	 if guess_number == the_number 
	 	break 
	    end	
	 if guess_number < the_number 
	 	puts 'Your guess is a little low'
	    else puts 'Your guess is a little too high'
	    end   
	 tries_left = 4 - tries_counter
	 if tries_left==2 
	    puts 'Try again...You have two more tries left!!'
	 end  
	 if tries_left==1 
	 	puts 'Try again..You have one more try left!!'
	 	end 
end

if guess_number == the_number 
   puts 'Congratulations!! You guessed the correct number'
     else 
	   puts 'Your 3 tries are up...Better luck next round'
end



