require 'json'
require 'rest-client'
json_reddit = RestClient.get('https://www.reddit.com/.json')
reddit = JSON.load json_reddit

def build_story(title, ups, url)
	"Title: " + title + 
	"\nUps: " + ups +
	"\nURL: " + url + "\n "
	
end

reddit['data']['children'].each do |story|
	title = story['data']['title']
	ups = story['data']['ups'].to_s
	url = story['data']['url']
	puts build_story(title, ups, url)
end
