# HINT: You will have to add an initialize method!

class Reddit
  attr_accessor :headlines, :title, :upvotes, :url


  def initialize
    @headlines = []
  end

  def fetch_stories
    reddit_json_string = RestClient.get('http://www.reddit.com/.json') # ruby doesn't understand this is json
    reddit_json = JSON.load reddit_json_string # load string as json so ruby can understand it
    reddit_stories = reddit_json['data']['children'] # this is an array of hashes, each hash contained is a story
    reddit_stories.each do |story| 
      title = story['data']['title']
        upvotes = story['data']['ups']
        url = story['data']['url']
        headline = Story.new(title, upvotes, url, 'reddit.com')
        @headlines << headline 
      end
    @headlines
  end


end