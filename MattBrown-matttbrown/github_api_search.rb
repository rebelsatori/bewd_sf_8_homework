# Add gems needed to get and convert data
require 'json'
require 'rest-client'

# Get a search term
puts 'Enter a search term for the Ruby repo\'s on Github:'
query = gets.chomp

# Run the search using the given term, and convert JSON results to a hash
result_hash = JSON.load(RestClient.get("https://api.github.com/search/repositories?q=" + query + "+language:ruby"))

# Tell the user how many results there are
puts "There are " + result_hash['total_count'].to_s + " results. \n\n"

# Iterate though the hash and return the top repo titles, owners, and number of stars.  Note that Github throttles results to 30
result_hash['items'].each do |idx|
	puts "The repo " + idx['name'] + " was made by " + idx['owner']['login'] + " and has "  + idx['stargazers_count'].to_s + " stars."
end