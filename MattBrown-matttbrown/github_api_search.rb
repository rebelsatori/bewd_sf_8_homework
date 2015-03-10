# Make sure we're using gems to get and convert data
require 'json'
require 'rest-client'

# Get a search term
puts 'Enter a search term for the Ruby repo\'s on Github:'
query = gets.chomp

# Run the search using the term supplied above, and convert JSON results to a hash
result_hash = JSON.load(RestClient.get("https://api.github.com/search/repositories?q=" + query + "+language:ruby"))

puts "There are " + result_hash['total_count'].to_s + " results. \n\n"

result_hash['items'].each do |idx|
	puts "The repo " + idx['name'] + " was made by " + idx['owner']['login'] + " and has "  + idx['stargazers_count'].to_s + " stars."
end