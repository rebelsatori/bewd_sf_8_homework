require_relative 'lib/reddit.rb'
require_relative 'lib/story.rb'
require_relative 'lib/personalization.rb'

puts "Hello and welcome to the reddit interface! I'm here to serrrrrve you. Get it? Serve? Server. Ahh classic dev humor."
puts "First a question: Would you rather 1. Find stories based on your personal interests or 2. Name a subreddit you already have in mind? Please input 1 or 2."

answer = gets.strip.to_i




#reddit = Reddit.new
#stories = reddit.fetch_stories
#peronalize = Personalization.new
#interests = personalization.interests
    if answer == 2
		reddit = Reddit.new
		stories = reddit.fetch_stories
		stories.each do |story|
			story.headline
	end
	elsif answer == 1
		personalize = Personalization.new
		interests = personalize.fetch_interests
		interests.each do |interest|
			interest.headline
	end


end