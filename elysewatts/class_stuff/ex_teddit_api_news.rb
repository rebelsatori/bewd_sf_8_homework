# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
require 'json'
require 'rest-client'


json = RestClient.get('http://reddit.com/.json')
result = JSON.load json

story = {}
stories = []


result['data']['children'].each do |story|
	title = story['data']['title']
	category = story['data']['subreddit']
	upvotes = story['data']['ups']
	story['title'] = title

	stories.push story
end



