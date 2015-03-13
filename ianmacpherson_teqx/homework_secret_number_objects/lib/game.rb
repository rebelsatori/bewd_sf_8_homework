# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game
  MAX_GUESSES = 3
  def initialize(number_generator, player)
    @secret_number = number_generator.number
    @name = player.name
  end

  def game_prompt
    print "\nGuess a number between 1 and 10, #{@name}: "
  end

  def error_message
    puts "That is not a number between 1 and 10."
  end

  def win_message
    puts "\nYou guessed it!"
  end

  def lose_message
    puts "\nYou ran out of guesses, sorry!\nThe secret number was #{@secret_number}."
  end

  def start
    guesses = 0
    while guesses < MAX_GUESSES
      puts "#{@name}, you have #{MAX_GUESSES - guesses} #{MAX_GUESSES - guesses == 1 ? 'guess' : 'guesses'} left."

      game_prompt
      input = gets.chomp.to_i
      case input
      when @secret_number
        win_message
        break
      when 1..10
        if input < @secret_number
          puts "Your guess is too low."
        else
          puts "Your guess is too high."
        end
      when 0
        error_message
      end
      guesses += 1
    end
    lose_message if guesses == MAX_GUESSES
    puts "\nGoodbye."
  end
end