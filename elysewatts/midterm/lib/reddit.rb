class Reddit
  attr_accessor :headlines, :title, :upvotes, :url


  def initialize
    @headlines = []
    @stories = []
    puts "Welcome! I will bring you up to 100 reddit stories!"
    get_number_of_stories
  end

  def get_number_of_stories
    puts "How many stories do you want?"
    @number_of_stories = gets.chomp
    validate_number(@number_of_stories)
    fetch_stories(@number_of_stories)
  end

  def validate_number(n)
    until n.to_i > 0 && n.to_i < 100
      puts 'kindly provide a number from 1 - 100.'
      get_number_of_stories
    end
    puts "ok thank you fetching #{n} stories now!"
  end

  def fetch_stories(number_of_stories)
    reddit_json_string = RestClient.get("http://www.reddit.com/.json?limit=#{number_of_stories}")
    reddit_json = JSON.load reddit_json_string
    reddit_stories = reddit_json['data']['children']
    reddit_stories.each do |story| 
      if @subreddit == story['data']['subreddit']
      @stories << story
      end
    print_headlines(@stories)
  end

    def print_headlines(stories)
      stories.each do |story|
        title = story['data']['title']
        score = story['data']['score']
        url = story['data']['url']
        headline = Headline.new(title, score, url)
        @headlines << headline
      end
    @headlines
    end


end