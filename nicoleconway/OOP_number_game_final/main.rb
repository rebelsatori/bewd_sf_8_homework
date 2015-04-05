#Nicole Conway Homeowrk OOP Number Game 
#03/16/15

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/secret_number'


# Print welcome message to user
puts "Welcome to the number guessing game by Nicole Conway!"
# Ask user for their name, and save it in a Player object.
puts "What is your name?"
player_name = gets.chomp
player1 = Player.new(player_name)
# Welcome player by name
player1.welcome

#Initialize a new Game object, and start it
Game.new
