require 'json'
require 'rest-client'
require 'pry'

reddit = JSON.load(RestClient.get('http://www.reddit.com/.json'))

stories = reddit['data']['children']

puts stories.class
puts stories.first["data"]["score"]
puts stories.first["data"]["title"]

stories.each do |story|
	puts 'Upvotes: ' + story["data"]["score"].to_s + ', Title: ' + story["data"]["title"] + ', Subreddit: ' + story["data"]["subreddit"] + '.'
	
end
