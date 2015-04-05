###############################################################################
#
# Object Oriented Secret Number
#
# Read the hints below and complete this file. This Lab
# is to practice your knowledge of object oriented programming.
#
###############################################################################
#
# Lets create an Object Oriented version of our Secret Number Game.
#
# The main.rb file is where the game begins. This class should tell the player who made it.
# Ask the player for their name and then instantiate the Game class.
#
# Your updated game should have 3 classes (SecretNumber, Game and Player). These
# files have already been created and included (using "require") for you in this file.
#
# Below is a description of each class and some guidelines for each.
#
# SecretNumber
#   This class should create and store a random number between 1-10.
#
# Player
#  Should ask the user for their name and store it in an attribute.
#
# Game
# This class holds most of the game logic and should:
#   Welcome players and inform them of the game rules.
#   Initialize the Player class.
#     Initialize the Secret Number class.
#     Prompt the user to choose a number, verify if the user guessed correctly.
#     If the user guesses incorrectly let them know if they were too high or too low.
#   Monitor how many guesses the player has before the game is over.
#
# Add helpful comments to your code to document what each section does.
#
# Tip: Refer to your secret number homework when helpful.

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/secret_number'

#game methods
def new_player
	name = ask_user "What is your name?"
	Player.new(name)
end

def ask_user(question)
  puts question
  gets.strip
end




# TODO: put code here print a welcome message for your user
#Game Welcome
puts ".................."
puts "Welcome to THE INCREDIBLE SECRET NUMBER GAME (created by TS)"
puts ".................. \n \n \n"


# TODO: put code here ask the user for their name, and save it in a Player object.
#Player Name
player = new_player
player.greet


# TODO: put code here to initialize a new Game object, and start it
#Rules
puts "Here is how this game works."
puts "1. You get three tries to guess a secret number between 1 and 10."
puts "2. I'll give you hints if you need to go higher or lower...so use some strategy."
puts "3. That's it. Let's go."

#start game
# secret = SecretNumber.new
game1 = Game.new(player)
game1.play





