# Exercise Goal: This is an exercise in reading and writing code.
# => The purpose of this exercise is to practice creating classes.
# => The main.rb file is where the application starts, and we've given you the code below.
# => Your job is to write the "Apartment", "Building" and "Renter" classes.
# => You can find those files in the 'lib' folder (or use the Sublime Text "Goto Anything" shortcut key!)

# => Run this file on the command line, "ruby main.rb" and see what happens.
# => Read the code below and use it to inform what variables and methods are necessary for each of the classes listed above.
# => We've also provided a png file of the terminal output from the completed version. (This won't open in Sublime Text)
# => Hint: Think before you code. Annotate code and comment out sections as you test different sections

# ============================================================================
# Visualizing our structures:
# A Building has many Apartments
# An Apartment has 1 Renter
#
# Building
# |-- Apartment
# |-- Apartment
# |-- Apartment
#     |-- Renter
# |-- Apartment
#     |-- Renter
# |-- Apartment
# ============================================================================

require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

# ============================================================================
# First we define some helpful methods for our code.
# ============================================================================

# Ask user prints out a question and then gets a user's input.
# This is used throughout the program to simplify input.
#
# NOTE: we call .to_i on some return values to turn them into numbers!
#
# Remember: Don't Repeat Yourself !
def ask_user(question)
  puts question
  gets.strip
end

# This will ask the user some information about an apartment unit and then
# create and return a new Apartment object.
def create_apartment
  puts "-----------New Apartment-----------"
  name = ask_user "What is the apartment number / name?"

  apt_sqft = ask_user "How many square feet is apartment #{name}?"
  apt_sqft = apt_sqft.to_i

  apt_bedrooms = ask_user "How many bedrooms does apartment #{name} have?"
  apt_bedrooms = apt_bedrooms.to_i

  apt_bathrooms = ask_user "How many bathrooms does apartment #{name} have?"
  apt_bathrooms = apt_bathrooms.to_i

  Apartment.new(name, apt_sqft, apt_bedrooms, apt_bathrooms)
end

# This will ask the user some information about a renter person and then
# create and return a new Renter object.
def create_renter
  puts "-----------New Renter-----------"
  name = ask_user "What is the renter's name?"

  credit_score = ask_user "What is the #{name}'s credit score?"
  credit_score = credit_score.to_i

  gender = ask_user "What gender is #{name}?"

  Renter.new(name, credit_score, gender)
end

# This will ask the user some information about an apartment building and then
# create and return a new Building object.
def create_building
  puts "-----------New Building-----------"
  building_name = ask_user "What is the building's name?"

  building_address = ask_user "What is the building's address?"

  Building.new(building_name, building_address)
end

# ============================================================================
# Now we call methods to run the program
# ============================================================================

puts "******************Welcome to Ruby Building Manager****************** \n \n \n"

# Create our building from user input
building = create_building

# Get the number of units in the building
building_unit_count = ask_user "How many units are in this building?"
building_unit_count = building_unit_count.to_i

# Now we want to iterate for all apartment units and gather information about them from the reatlor
building_unit_count.times do |unit|
  # Create an apartment object to keep track of the information about the unit
  apartment = create_apartment

  # Store the apartment in the building's list of apartments
  building.apartments[unit] = apartment

  puts "Apartment added successfully \n #{apartment}"

  # Find out if the apartment is available to rent
  unit_rented = ask_user "Is unit #{apartment.name} rented? (y)es (n)o"

  # If there's already someone in the apartment, let's get their information
  if unit_rented == "y"
    # Create a renter to store for later
    apartment.renter = create_renter
    puts "Renter added successfully"

    # Lastly, we find out how much this renter is renting the apartment for
    rent = ask_user "How much is this unit rented for?"
    apartment.rent = rent.to_i
  end
end

# ============================================================================
# Now we will loop until the user doesn't want to view the apartments anymore.
# ============================================================================

# HINT: We use the `break` statement to manually exit a loop!
loop do
  response = ask_user "What would you like to do next, (v)iew all apartments? (q)uit?"

  if response == 'v'
    building.view_apartments
  elsif response == 'q'
    puts "Thanks for using Ruby Building Manager"
    break
  else
    puts "Please enter a valid choice option!"
  end
end
