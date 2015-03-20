# this is the part that picks up WorldPolitics

require 'json'
require 'rest-client'

class Reddit
  attr_accessor :stories

  def initialize
    @stories= Array.new
  end
 

  def fetch_stories_1
    ##reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
    reddit_json = JSON.load(RestClient.get('http://www.reddit.com/r/USANews.json'))
    reddit_json['data']['children'].each do |child|
      title= child['data']['title']
      my_story = Story.new(title)
      @stories.push(my_story)
    end
   puts ' News from the USA' 
  end 

  def fetch_stories_2
    ##reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
    reddit_json = JSON.load(RestClient.get('http://www.reddit.com/r/India.json'))
    reddit_json['data']['children'].each do |child|
      title= child['data']['title']
      my_story = Story.new(title)
      @stories.push(my_story)
    end
   puts 'News from India'
  end  


  def fetch_stories_3
    ##reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
    reddit_json = JSON.load(RestClient.get('http://www.reddit.com/r/Italy.json'))
    reddit_json['data']['children'].each do |child|
      title= child['data']['title']
      my_story = Story.new(title)
      @stories.push(my_story)
    end
   puts 'News from Italy'
  end 

 end