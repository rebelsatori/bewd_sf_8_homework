require 'json'
require 'rest-client'
require_relative 'story'

class RemoteSource

  def self.get
    if choice = 1

    res = JSON.load(RestClient.get('http://mashable.com/stories.json'))
    res["hot"].map do |story|
      Story.new story["title"], story["channel"]
    end
    
    elsif choice == 2

    res = JSON.load(RestClient.get('http://reddit.com/.json'))
    res["data"]["children"].map do |story|
      Story.new story["data"]["title"], story["data"]["subreddit"]
    end

    else

    res = JSON.load(RestClient.get('http://digg.com/api/news/popular.json'))
    res["data"]["feed"].map do |story|
      Story.new story["content"]["title_alt"], story["content"]["tags"]
    end

  end
 end








end