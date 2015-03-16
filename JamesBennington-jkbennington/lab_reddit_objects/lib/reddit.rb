
# HINT: You will have to add an initialize method!
require 'json'
require 'rest-client'

class Reddit
  # TODO: This class should have an attribute called "stories".
    attr_accessor :stories 
    def initialize 
      @stories = []

    end
      
  def fetch_stories 
      
      reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))

      reddit_json['data']['children'].each do |story|

      stories = Story.new(story["data"]["score"].to_s, story["data"]["title"], story["data"]["url"], story["data"]["domain"])
  
    
        # get_json data
        # create a bunch of story object from json_data
        # fill up @stories with the story objects

      @stories << stories
    end
    @stories
  
  end
    # TODO: This should check if the stories already have been loaded,
    # and if so, return them. Otherwise, it should load the stories from reddit:
    #   1. It should load http://reddit.com/.json as JSON
    #   2. Your code should find the title, upvotes, and story URL
    #   3. Using that data, create a new Story object with the title, votes,
    #      story URL, and 'reddit.com' for the site argument
    #   4. Store a list Story objects into the stories attribute
    #   5. Return the list of story objects
    
end
