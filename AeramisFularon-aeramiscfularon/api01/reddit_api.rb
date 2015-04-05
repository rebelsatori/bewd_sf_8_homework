# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'rest-client'
json = RestClient.get('http://www.reddit.com/.json')
result = JSON.load json

reddit = result['data']['children']

reddit.each do |story|
	title = story['data']['title'].to_s
	category = story['data']['subreddit'].to_s
	url = story['data']['url'].to_s
	upvotes = story['data']['ups'].to_s

	puts "---------------------------------------------------------------"
	puts title
	puts "Category: " + category
	puts "URL: " + url
	puts "Upvotes: " + upvotes
end