class Reddit
  attr_accessor :headlines, :title, :upvotes, :url


  def initialize
    @headlines = []
  end

  def search
    puts "what is your search term?"
    term = gets.chomp
    fetch_stories(term)
  end

  def fetch_stories(term)
    reddit_json_string = RestClient.get("http://www.reddit.com/search.json&q=#{term}")
    reddit_json = JSON.load reddit_json_string
    reddit_stories = reddit_json['data']['children']
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