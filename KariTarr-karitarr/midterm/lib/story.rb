class Story

  attr_accessor :title, :score, :url, :site, :subreddit
  def initialize(title, score, url, subreddit)
    @title = title
    @score = score
    @url = url
    @subreddit = subreddit
    @site = 'reddit'
  end

  def headline
# Add a method called "headline" that returns a pretty string for each story
  	puts "headline: #{title} URL: #{url} upvotes: #{score} site: #{site} subreddit: #{subreddit}"
	end 


  def sub
# Add a method called "sub" that returns a each subreddit for the user
    puts  "#{subreddit}"
  end 

end