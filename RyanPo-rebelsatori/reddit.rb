require 'JSON'
require 'rest-client'


reddit_data = RestClient.get("http://www.reddit.com/.json")
reddit_hash = JSON.parse(reddit_data)

reddit_hash["data"]["children"].each do |story|

  puts "Author: #{story["data"]["author"]}"
  puts "Title: #{story["data"]["title"]}"
 
end
