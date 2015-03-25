class Reddit

  attr_accessor :stories

  def initialize
    @stories = []
  end

  def fetch_stories
    json = RestClient.get('http://www.reddit.com/.json')
    reddit_stories = JSON.load json

    reddit = reddit_stories['data']['children']

    reddit.each do |x|
      title = x['data']['title'].to_s
      upvotes = x['data']['ups'].to_s
      url = x['data']['url'].to_s
      category = x['data']['subreddit'].to_s

      story = Story.new(title, upvotes, url, category)
      @stories << story
    end

    @stories
  end

  def search
    puts 'What would you like to search for?'
    keyword = gets.chomp

    puts @stories.['category'].include?(keyword)
  end
  
end
