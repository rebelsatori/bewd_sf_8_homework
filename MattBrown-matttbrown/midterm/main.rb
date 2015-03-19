require_relative 'lib/chooser.rb'
require_relative 'lib/ppl_in_space.rb'
require_relative 'lib/geolocate.rb'

puts "Welcome to the ISS Locator API Tool"
puts "Created by Matt Brown for GA BEWD 8 \n\n"

choice = Chooser.new
choice.choose_an_action