#Secret number game developer by Dave Korsunsky

#Basic intro to the game
puts "Welcome to Secret Number. This game was created by Dave Korsunsky."
puts "Please enter your name:"
name = gets.chomp.capitalize #See if there are ways to run validations here. i.e. must be a number
puts "Hi " + name + '!'
puts "You have three attempts to guess the secret number."

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
  puts "Please make your guess:"
  guess = gets.chomp.to_i
  attempts -= 1
  compare = evaluate_guess(guess, secret)
  if compare == 'win' && attempts > 0
      puts "You win"
      break
    elsif compare == 'lower' && attempts > 0
      puts "Guess lower!"
      puts "You have " + attempts.to_s + " guess(es) left"
    elsif compare == 'higher' && attempts > 0
      puts "Guess higher!"
      puts "You have " + attempts.to_s + " guess(es) left"
    elsif compare == 'win' && attempts == 0
    puts "You win"
    elsif compare == 'lower' || compare == 'higher'
      puts "You lose, sucka."
  end
end
     