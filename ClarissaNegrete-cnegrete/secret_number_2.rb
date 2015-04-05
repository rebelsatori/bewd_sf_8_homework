

secret_number = 3

def game(secret_number)
  3.downto(1) do |num|

    puts "Make a guess between 1 and 10."
    guesses_left = num 
    if guesses_left == 1
      puts 'You have ' + guesses_left.to_s + ' guess left.'
    elsif
      puts 'You have ' + guesses_left.to_s + ' guesses left.'
    end

    guess = gets.to_i
    guesses_left = num - 1

    while guess < 1 || guess > 10
      puts 'Try again.'
      guess = gets.to_i
    end
    
    if guess == secret_number
      puts 'You guessed it baby, you are a genius!'
      abort
    end

    if guesses_left == 0
      puts 'No again! Game over! You lose! The secret number was ' + secret_number.to_s + '.'
      abort
    end

    if guesses_left > 0
      puts 'Too low, bro.' if guess < secret_number
      puts 'Too high, guy' if guess > secret_number
      end
    end

  end

puts 'This game is called the super secret number guessing game. Clarissa Negrete made it. '
puts 'Please type your name and press the Enter key.'
name = gets.chomp
puts 'Welcome to the game ' + name + ' ... and may the odds be ever in your favor.'
puts ''
puts 'Let\'s quickly go over the instructions. Guess a number between 1 and 10 and then press the Enter key.'
puts 'You\'ll have 3 tries to guess the correct number. Do you understand?'
answer = gets.chomp
if (answer == 'yes' or answer == 'Yes')
  puts 'Good! Let\'s get started.'
else
  puts 'Please go away.'
end

puts ''


game(secret_number)