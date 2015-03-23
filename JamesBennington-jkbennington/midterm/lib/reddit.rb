require 'json'
require 'rest-client'

class Reddit
  
    attr_accessor :stories 
    def initialize 
      @stories = []

    end
    #gathers api info for reddit appends it to stories
    def fetch_stories 
      puts "Please enter the name of a subreddit."
      subreddit = gets.strip
      
      reddit_json = JSON.load(RestClient.get("http://www.reddit.com/r/#{subreddit}/.json"))
      
      reddit_json['data']['children'].each do |story|
      story_object = Story.new(story["data"]["score"].to_s, story["data"]["title"], story["data"]["url"], story["data"]["domain"])
      @stories << story_object
    end
    @stories
  end
end
