# Nicole Conway Midterm
# this class takes input from user and gets return value from weather underground api

class Weather
  attr_accessor :city, :usstate
  def initialize(city, usstate)
    @city = city
    @usstate = usstate
  end
  def get_weather(city, usstate)
	require 'json'
	require 'rest-client'
	new_city = city.tr(" ", "_")
	new_usstate = usstate.tr(" ", "_")
	git_info = JSON.load(RestClient.get("http://api.wunderground.com/api/e229aec241dfed92/conditions/q/#{new_usstate}/#{new_city}.json"))
	tempf = git_info['current_observation']['temp_f'] 
	puts "It is #{tempf} degrees fahrenheit."  
  end

end





