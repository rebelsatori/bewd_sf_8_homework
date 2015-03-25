require 'json'
require 'rest-client'
require_relative 'lib/spotify'
require_relative 'lib/my_date'

#just a banner
puts "*********************"
puts "*      Spotify      *"
puts "*    Most Popular   *"
puts "*      Search       *"
puts "*********************"
puts "*********************"

tracks = {}

puts "In the following prompts, enter a date that you would like to know"
puts "what the most popular song on Spotify was."
#get the exact day from the user

puts "Please enter a date (YYYY-MM-DD):"
#create a new date, based on user input


date = gets.chomp
MyDate.new.format_date(date)

Spotify.new(tracks, date).get_tracks


