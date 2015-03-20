# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.
require 'pry'


class Game
	def initialize(player)
    @player = player.name
    @secret_number = SecretNumber.new.secret_number
	end

	def start_game
		puts "Welcome to the game #{@name}, ready to begin?"
    answer = gets.chomp.downcase
    if answer == "no"
      puts "Too bad! Let's get started"
    else
      puts "Great, let's get started!"
    end
    
    guesses = 0
    guess_count = 3

    while guesses < guess_count
      puts "what\'s your guess?"
      guess = gets.chomp.to_i
      if guess > @secret_number
        puts "too high, please guess again"
      elsif guess < @secret_number
        puts "too low, please guess again"
      elsif guess == @secret_number
        puts "you nailed it"
      break
      end
      guesses = guesses + 1
    end

    
    
    
    if guesses == 3
      puts "You lose the game."
    end

  end
end