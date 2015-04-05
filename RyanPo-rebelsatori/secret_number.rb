# this class will generate our secret number for us 

main.rb

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/secret_number'


puts '~~~Welcome! To my show! It's guess The Mysterious Secret Number show!!!~~~'
puts '******A Creation Of Ryan Oliver Po!'

def add_player
	    name = ask_user 'What\'s your name?'
	    player = Player.new(name)
	    player.intro
end


def start_game
	    rand_number = SecretNumber.new.get_number
	    game = Game.new(rand_number)
end


add_player
game = start_game
game.welcome
game.get_guess
game.check_guess









secret_number.rb

class SecretNumber
    attr_accessor :secret_number

def initialize secret_number
    puts "First, let's make this secret number appear from thin air...\n \n"
    @secret_num = rand(1..10)
@secret_num = secret_num
    end

    def return_secret_num
    	secret_num
end









def start_game
	# Reveal rules
	# Ask the user to guess
	# Check the user's guess
	# Sort the outcome, right or wrong
end


def Reveal_rules
    puts "This is how the Secret Number game works!"
    puts "Guess a number between 1-10"









game.rb

class Game
        attr_accessor :player, :secretnumber, :guess

        def initialize (guess, player, secretnumber)
         	    @guess = guess
         	    @player = player
         	    @secret_number = SecretNumber.new
        end
        
        def ask_user(question)
        	    puts question
        	    gets.strip
        end

        def guess_loop
        	guess_num = 0
        	tries_left = 3

            while true
            	guess = ask_user "What is your guess?"

            	if guess.to_i == @secretnumber.return_secret_num
            		tries_left = tries_left - 1
            		guess_num += 1
            		puts "You got it! You got it on try #{guess_num}!"
            		break
                elsif guess.to_i > @secretnumber.return_secret_num
                	tries_left = tries_left - 1
                	guess_num += 1
                	if tries_left == 1
                		puts "That is too high! You have #{tries_left} try left!"
                	else
                		puts "That is too high! You have #{tries_left} tries left"
                    end
                else
                	tries_left = tries_left - 1
                	guess_num += 1
                	if tries_left == 1
                		puts "You aimed too low! You have #{tries_left} try left!"
                	else
                		puts "You aimed too low! You have #{tries_left} tries left"
                	end
        end 

        if tries_left == 0
        	    puts "Oh so sorry! You depleted all the tries you're allowed in this game! The secret number was #{{@secretnumber}."
        	    break
            end
        end
    end
end






player.rb

class Player
	    attr_accessor :name

	            def ask_user
	            	puts 'Your name please?'
	            	name = gets.chomp

	            	puts 'Greetings' + name
	            end
	    end
end






