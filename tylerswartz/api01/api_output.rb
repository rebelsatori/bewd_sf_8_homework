# Homework for API class 4.
# Create a Ruby program that will output information from an API. Example APIs in Resources.md, both beginner and advanced. Save the file to your personal homework folder /api01 folder with the name of the resource. (like "reddit_api.rb").


#required
require 'json'
require 'rest-client'

#ask for zipcode
puts 'This is outputed information from the Google Maps API'
puts 'What US zipcode would you like to look up?'

zipcode = gets.chomp

#send GET request to Google
maps_api = JSON.load(RestClient.get("http://maps.googleapis.com/maps/api/geocode/json?address=" + zipcode))

#select and store the lat & lng data
lat = maps_api['results'][0]['geometry']['location']['lat']
long = maps_api['results'][0]['geometry']['location']['lng']

#output data
puts "Here is the latitude and longitude of " + zipcode.to_s + "..."
puts "Latitude: " + lat.to_s
puts "Longitude: " + long.to_s