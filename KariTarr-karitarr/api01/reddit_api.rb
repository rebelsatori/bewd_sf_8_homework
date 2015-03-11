

require 'json'
require 'rest-client'

# create a hash for the reddit j_son 
reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))

# parse out the array that has the story hashes, call it story_array
story_array = []
reddit_json["data"]["children"].each { |key, value| story_array.push(key) }

# parse out the sub hash that has the story data in it so we can loop on it
story_array2 = []
story_array.each { |i|  story_array2.push(i["data"]) }

#loop through array to build headlines

story_array2.each { |i| puts "headline: " + i["title"] + " #" + i["subreddit"] + " upvotes: " + i["score"].to_s }



