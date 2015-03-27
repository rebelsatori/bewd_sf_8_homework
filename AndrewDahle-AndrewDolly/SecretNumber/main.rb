
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/secret_number'

# TODO: put code here print a welcome message for your user
puts "Welcome to the Secret Number Game. It will blow your mind."
puts "This game may not work entirely properly, but that is bc it was made by an amateur programmer named Andrew Dahle."

# TODO: put code here ask the user for their name, and save it in a Player object.

puts "What do they call you?"
name = gets.chomp
player = Player.new(name)
secret = SecretNumber.new
game = Game.new(player, secret)
game.run_game


# TODO: put code here to initialize a new Game object, and start it



