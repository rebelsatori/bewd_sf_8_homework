
require 'json'
require 'rest-client'


require_relative 'lib/story'
require_relative 'lib/reddit'
require_relative 'lib/mashable'


reddit_feed = Reddit.new.fetch_stories #instantiate a reddit option and call its get_stories method
reddit_feed.slice(1..3).each do |story| # for each story object in the array returned, call its print_headline method 
	story.print_headline 									# i'm only taking first three for my feed..
end


