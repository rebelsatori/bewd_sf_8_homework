require 'json'
require 'rest-client'
require 'pry'

reddit = JSON.load(RestClient.get('http://www.reddit.com/.json'))

mars = reddit['data']['children']

puts mars.class
puts mars.first["data"]["score"]
puts mars.first["data"]["title"]

mars.each do |story|
puts 'Upvotes: ' + story["data"]["score"].to_s + ', Title: ' + story["data"]["title"] + ', Subreddit: ' + story["data"]["subreddit"] + '.'
	
end
