#####Secret number game developer by Dave Korsunsky

#####Setup variables
secret = 8
counter = 3

#####Basic intro to the game
puts "Welcome to Secret Number. This game was created by Dave Korsunsky"
puts "Please enter your name"
name = gets.chomp.capitalize #See if there are ways to run validations here. i.e. must be a number
puts "Hi " + name + '!'

#####Start game
puts "Enter your first guess, Mo'fo:"
guess = gets.chomp.to_i

if guess == secret
  puts "You win"
  elsif counter > 0 && guess < secret
    counter = counter - 1
    puts "Higher"
    puts "You have " + counter.to_s + " guesses remaining"
    puts "Guess again"
    guess = gets.chomp.to_i
    if guess == secret
        puts "You win"
        elsif counter > 0 && guess < secret
          counter = counter - 1
          puts "Higher"
          puts "You have " + counter.to_s + " guess remaining"
          puts "Guess again"
          guess = gets.chomp.to_i
          if guess == secret
              puts "You win"
            else
            puts "Game over, sucka"
          end
    end
  elsif counter > 0 && guess > secret
    counter = counter - 1
    puts "Lower"
    puts "You have " + counter.to_s + " guesses remaining"
    puts "Guess again"
    guess = gets.chomp.to_i
    if guess == secret
        puts "You win"
      elsif counter > 0 && guess > secret
        counter = counter - 1
        puts "Lower"
        puts "You have " + counter.to_s + " guess remaining"
        puts "Guess again"
        guess = gets.chomp.to_i
          if guess == secret
              puts "You win"
            else
            puts "Game over, sucka"
          end
    end
end      





