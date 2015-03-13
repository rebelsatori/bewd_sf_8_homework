require 'json'
require 'rest-client'
json_reddit = RestClient.get('https://www.reddit.com/.json')
reddit = JSON.load json_reddit

def build_story(title, subreddit, ups)
	"Title: " + title + ", Subreddit: " + subreddit + ", Ups: " + ups
end

reddit['data']['children'].each do |story|
	title = story['data']['title']
	subreddit = story['data']['subreddit']
	ups = story['data']['ups'].to_s
	puts build_story(title, subreddit, ups)
end