# Create a Ruby program that will output information 
# from an API.
# Example APIs in Resources.md, both beginner 
# and advanced.
# Save the file to your personal homework folder /api01 
# folder with the name of the resource. (like "reddit_api.rb"

require 'json'
require 'rest-client'

# get state data from US 2010 census based on state number key i.e. Alabama = 01
def get_state_data(number)
		pop_data = RestClient.get('http://api.census.gov/data/2010/sf1?key=9ae93d78da4e45bc4f2b65d34477108f30cdb15e&get=P0010001&for=state:' + number.to_s)
		JSON.load pop_data
end

# assign states to numbers for the keys above
numbers = (1..56).to_a
states = ["alabama", "alaska", "american samoa", "arizona", "arkansas", "california", "colorado", "connecticut", "delaware", "district of columbia", "florida", "georgia", "guam", "hawaii", "idaho", "illinois", "indiana", "iowa", "kansas", "kentucky", "louisiana", "maine", "maryland", "massachusetts", "michigan", "minnesota", "mississippi", "missouri", "montana", "nebraska", "nevada", "new hampshire", "new jersey", "new mexico", "new york", "north carolina", "north dakota", "northern mariana islands", "ohio", "oklahoma", "oregon", "pennsylvania", "puerto rico", "rhode island", "south carolina", "south dakota", "tennessee", "texas", "u.s. virgin islands", "utah", "vermont", "virginia", "washington", "west virginia", "wisconsin", "wyoming"]
pop_info = Hash[states.zip numbers]

# ask what state user wants to know the population of
puts 'What state do you want to know the population of?'

# make the answer make the stuff in the key
answer = gets.chomp.downcase
state_data = get_state_data(pop_info[answer.to_s])[1][0]

# if state_data.to_i > 0
	puts 'The population of ' + answer + ' according to the 2010 US census is ' + state_data
# else 
# 	puts 'I didn\'t quite get get... either your spelling sucks, or this program just isn\'t user friendly enough. Try running the program again.'
# end