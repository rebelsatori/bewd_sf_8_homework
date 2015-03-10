# Counter = 3
# Secret = 8

# Ask for first Guess
# Counter  - 1
# If guess == secret
#   win. game over
# else if Counter > 0 && guess < secret
#   Counter - 1
#   Guess higher
#   You have two guesses left
#   Guess Again 
# elsif Counter > 0 && guess > secret
#   Counter - 1
#   Guess lower
#   You have two guesses left
#   Guess Again
#   guess = gets.chomp
#     if guess = secret
#       You win
#       break
#     else if Counter > 0 && guess < secret
#       Counter - 1
#       Guess higher
#       You have one guesses left
#       Guess Again 
#     elsif Counter > 0 && guess > secret
#       Counter - 1
#       Guess lower
#       You have one guesses left
#       Guess Again
#       guess = gets.chomp
#         if guess == secret
#           You win
#           break
#         else
#         'Sorry, you lose. The secret number was' + secret 


#Secret number game developer by Dave Korsunsky

#Basic intro to the game
puts "Welcome to Secret Number. This game was created by Dave Korsunsky"
puts "Please enter your name"
name = gets.chomp.capitalize #See if there are ways to run validations here. i.e. must be a number
puts "Hi " + name + '!'

#Setup variables
#Hard code the secret
secret = 8
# Set secrets variable which we will decrement with each guess
counter = 3

#Start game
puts "Enter your first guess, Mo'fo:"
guess = gets.chomp.to_i
# counter = counter - 1

if guess == secret
  puts "You win"
  # break
  elsif counter > 0 && guess < secret
    counter = counter - 1
    puts "Higher"
    puts "You have " + counter.to_s + " guesses remaining"
    puts "Guess again"
    guess = gets.chomp.to_i
  elsif counter > 0 && guess > secret
    counter = counter - 1
    puts "Lower"
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





