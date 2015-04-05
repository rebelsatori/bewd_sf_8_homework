require 'rest_client'
require 'json'

placeholder_json = JSON.load(RestClient.get('http://jsonplaceholder.typicode.com/'))
Front_Page = []
reddit_json['data']['children'].each do |child|
	hash = {}
	hash['title'] = child['data']['title']
	hash['subreddit'] = child['data']['subreddit']
	hash['score'] = child['data']['score']
	Front_Page << hash
end
puts Front_Page