#Secret number game developer by Dave Korsunsky

#Basic intro to the game
puts "Welcome to Secret Number. This game was created by Dave Korsunsky"
puts "Please enter your name"
name = gets.chomp.capitalize #See if there are ways to run validations here. i.e. must be a number
puts "Hi " + name + '!'

#Game logic
secret = 8
attempts = 3


def evaluate_guess (guess, secret)
  if guess == secret
    'win'
  elsif guess < secret
    'higher'
  else
    'lower'
  end
end

while attempts > 0
  puts "Please make a guess"
  guess = gets.chomp.to_i
  attempts -= 1
  compare = evaluate_guess(guess, secret)
  if compare == 'win'
      puts "You win"
      break
    elsif compare == 'lower'
      puts "Guess lower"
      puts "You have " + attempts.to_s + " guesses left"
    else
      puts "Guess higher"
      puts "You have " + attempts.to_s + " guesses left"
    end
  end
     