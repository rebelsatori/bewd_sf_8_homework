require 'json'
require 'rest-client'

json = RestClient.get('http://www.reddit.com/.json')
reddit_result = JSON.load json


def reddit (reddit_result)
  stories = []
  reddit_result['data']['children'].each do |x|
    output = {}
    output['title'] = x['data']['title'] 
    output['category'] = x['data']['subreddit']
    output['upvotes'] = x['data']['ups']  
    stories.push(output)
  end
  stories
end

answer = reddit(reddit_result)

puts answer