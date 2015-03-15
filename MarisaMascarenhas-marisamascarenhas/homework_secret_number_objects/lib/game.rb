# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game
	attr_accessor :guesses, :s_number, :player
	 
     def initialize (player)
        @player=player
        @guesses=3
        @s_number=SecretNumber.new
	   end

  
     def welcome     
       puts "Hi, #{@player} !Hope you enjoy this game!!"
       puts ''
     end   


     def rules
    	puts 'Before you start let me explain the rules'
        puts 'I have chosen a number between 1 & 10'
        puts'You need to guess the number I have chosen '
        puts'You will get some hints to guess the number'
        puts 'You will get 3 tries to guess the number' 
        puts''
        ## puts @s_number.number  test for random number
     end
 

     def actual_game
        puts ''
        the_number = @s_number.number
        ## the players gets three guesses
        tries_counter = 1
            while tries_counter < @guesses + 1
                tries_counter=tries_counter + 1
                puts 'Enter a number you guess between 1 & 10'
                guess_number = gets.chomp.to_i
                  
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
            

     end    
end
