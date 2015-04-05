# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
require 'rest-client'
reddit_json = JSON.load(RestClient.get('http://reddit.com/.json'))
# puts reddit_json['data']['children'][0]['data']['title']
# puts reddit_json['data']['children'][0]['data']['subreddit']
# puts reddit_json['data']['children'][0]['data']['score']
# reddit_json['data']['children'].each do |child|
# 	puts "Title: " + child['data']['title']
# 	puts "Subreddit: " + child['data']['subreddit']
# 	puts "Score: " + child['data']['score'].to_s
# end

Front_Page = []
reddit_json['data']['children'].each do |child|
	hash = {}
	hash['title'] = child['data']['title']
	hash['subreddit'] = child['data']['subreddit']
	hash['score'] = child['data']['score']
	Front_Page << hash
end
puts Front_Page