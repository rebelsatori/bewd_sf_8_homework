
require 'json'
require 'rest-client'

class Reddit
  attr_accessor :stories
 
  def initialize
    @stories = []
  end
 
  def fetch_stories
  
   # check if the stories already have been put in the array,
    if @stories.empty? 
    #ipopulate the array with the stories from reddit:
        #   1. load http://reddit.com/.json as JSON
      reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
       # find the title, upvotes, and story URL 
      stories_reddit = reddit_json["data"]["children"]
       #   Using that data, create a new Story object with the title, votes, story URL, and 'reddit.com' for the site argument
      stories_reddit.each do |story| 
        x = Story.new(story["data"]["title"], story["data"]["score"], story["data"]["url"], story["data"]["subreddit"])
         #   4. Store a list Story objects into the stories attribute  
        @stories << x 
                    end  
     #   5. Return the list of story objects
      @stories 
    else 
     @stories
    end
  end

#creates an array with the users filtering value
#def get_stories_with_string(user_filter)
 #   subreddit_array = []
  #  @stories.each do |story|
     # if  story.subreddit == user_filter
    #    subreddit_array << story.subreddit
     # end
    #end 
    #puts subreddit_array
#end 

def get_subreddits
   subreddit_array = []
    @stories.each do |story| 
        subreddit_array << story.subreddit
     end
   subreddit_array
end 


end
