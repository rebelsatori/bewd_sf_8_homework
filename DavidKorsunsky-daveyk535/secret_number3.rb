#Improvements:
#Capitalize first name and last name
#Validate name is only letters
#Validate guess is only numbers and is less than 10

#Secret number game developer by Dave Korsunsky

#Basic intro to the game
puts "Welcome to Secret Number. This game was created by Dave Korsunsky."
puts "Please enter your name:"
name = gets.chomp.capitalize #See if there are ways to run validations here. i.e. must be letters only
puts "Hi " + name + '!'
puts "You have three attempts to guess the secret number between 1 and 10."

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
  puts "Please make your guess (1-10):"
  guess = gets.chomp.to_i
  attempts -= 1
  compare = evaluate_guess(guess, secret)
  if compare == 'win' 
      puts "You win!"
      break
    elsif compare == 'lower' && attempts > 0
      puts "Guess lower!"
      puts "You have " + attempts.to_s + " guess(es) left"
    elsif compare == 'higher' && attempts > 0
      puts "Guess higher!"
      puts "You have " + attempts.to_s + " guess(es) left"
    elsif compare == 'lower' || compare == 'higher'
      puts "The secret number was 8. You lose, sucka."
  end
end
     