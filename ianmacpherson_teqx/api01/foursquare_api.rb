require 'json'
require 'rest-client'
require 'pry'

ID = 'U00F5YNI4GP42XPJQ4XVZPYA0KPLOVAY5ESSGDGZBMTOWW1R'
CLIENT = 'N2EVT11X1LNJGSK411OO2AH1TQQVYG0ZK1JJ1VKHIAUDYYFG'

param_hash = {
  'near' => 'San Francisco, CA',
  'limit' => '10',
  'client_id' => ID,
  'client_secret' => CLIENT,
  'v' => '20130815'
}

puts "San Francisco Search (with Foursquare)"

while 1
  print "Enter a type of place to search on or type 'q' to quit: "
  input = gets.chomp
  break if input == 'q'
  param_hash['query'] = input
  venues_string = RestClient.get "https://api.foursquare.com/v2/venues/search", {:params => param_hash, :accept => :json}
  if venues_string != nil
    venues_hash = JSON.parse venues_string
    if venues_hash && venues_hash['response']
      venues_array = venues_hash['response']['venues']
      venues_array.each_with_index { |venue, i| puts "#{i + 1}: #{venue['name']}\n   #{venue['location']['formattedAddress'].join(', ')}" }
    end
  end
end