# HINT: You will have to add an initialize method!




class Reddit
  attr_accessor :stories

  def initialize
    @stories = []
  end

  # TODO: This class should have an attribute called "stories".

  # HINT: Start here!
  def fetch_stories
    #if @ stories has anything in it, just output stories
    if @stories.length > 0
        @stories
    #if it's empty, pull down the json and put it in articles
    else
      articles = JSON.load(RestClient.get("http://www.reddit.com/.json"))
    #iterate through articles and assign the values in each of the keys to a variable
      articles['data']['children'].each do |article|
        title = article['data']['title'] 
        upvotes = article['data']['ups']
        url = article['data']['url']
        site = 'reddit.com'
        #create a new story object, taking in the four arguments above
        @stories.push(Story.new(title, upvotes, url, site))
      end
      #output the @stories attribute
      @stories
    end
  end
end        

    # TODO: This should check if the stories already have been loaded,
    # and if so, return them. Otherwise, it should load the stories from reddit:
    #   1. It should load http://reddit.com/.json as JSON
    #   2. Your code should find the title, upvotes, and story URL
    #   3. Using that data, create a new Story object with the title, votes,
    #      story URL, and 'reddit.com' for the site argument
    #   4. Store a list Story objects into the stories attribute
    #   5. Return the list of story objects
