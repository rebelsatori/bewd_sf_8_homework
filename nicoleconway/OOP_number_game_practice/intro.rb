# Nicole Conway
# Guess the number game OOP - BEWD Homework
# 03/16/15

class Introduction
	def initialize
		intro
	end

	def intro
		puts "Welcome to the number guessing game by Nicole Conway!"
		puts "What is your name?"
		player_name = gets.chomp
		puts "Welcome " + player_name
	end
end