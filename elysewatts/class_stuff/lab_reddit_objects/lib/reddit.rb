# HINT: You will have to add an initialize method!

class Reddit
  attr_accessor :stories, :title, :upvotes, :url


  def initialize
    @stories = []
  end

  def fetch_stories
    if @stories.empty? 
      reddit_json_string = RestClient.get('http://www.reddit.com/.json')
      reddit_json = JSON.load reddit_json_string
        reddit_json['data']['children'].each do |story| ## maybe i'm not calling the right section?
          title = story['title']
          upvotes = story['ups']
          url = story['permalink']
          clean_story = Story.new(title, upvotes, url, 'reddit.com') ## everything coming up nil but the hard code :(((
          @stories << clean_story 
        end
    end
    @stories
  end


end