

#add something if they just hit enter or put a letter
puts "From the brilliant minds that brought you FIZZBUZZ and TEDDIT comes a revolution that's sure to disrupt the games industry..."
puts "Welcome to SECRET NUMBER"
puts "Envisioned by coding instructors everywhere..."
puts "Brought to life by Kari 'the loop ninja' Tarr"
puts "Please enter the name of player one"
player_name = gets.chomp
puts "Well hello " + player_name
puts "Okay, " + player_name + " you have 3 tries to guess the secret number."
puts "What is your first guess?" 
# set x = a random number between 1 and 10 inclusive
# and start a count to keep track of the number of guesses 
x = rand(1..10)
guess_count = 0

# run the loop until the number of guesses reaches 3
# get a  value from the user 
while guess_count < 3
# increase the guess count by 1 each time it loops
	guess_count += 1
	guesses_left = 3 - guess_count 
	puts "guess number: " + guess_count.to_s
# set g = to the value from the user and convert to an integer
	g = gets.chomp.to_i
#if the the user value = the random number, exit the loop
	 if g == x 
		puts "Congrats! You win! You will go on to do amazing things with your life!"
		break
#otherwise if the guess count is still less than three then tell the user if the value is too high or too low
	elsif guess_count < 3  
		if g > x 
			if guesses_left == 1 
			puts g.to_s + ": is too high :(  LAST CHANCE!"
			else	
			puts g.to_s + ": is too high :( You have : " + guesses_left.to_s + " guesses left"
			end
		else
			if guesses_left == 1 
		puts g.to_s + ": is too low :( LAST CHANCE!"
			else 
			puts g.to_s + ": is too low :( You have : " + guesses_left.to_s + " guesses left"
			end 
		end
#if the guess count reaches 3, end the loop and display a message.
	else
		puts "Sorry, " + player_name + " , that's GAME OVER. The number was actually " + x.to_s
	end 		
end



	
