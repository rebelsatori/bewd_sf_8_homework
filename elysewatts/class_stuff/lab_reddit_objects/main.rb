
require 'json'
require 'rest-client'


require_relative 'lib/story'
require_relative 'lib/reddit'
require_relative 'lib/mashable'


reddit_stories = Reddit.new ## an instance of the Reddit class
stories = reddit_stories.fetch_stories ## an array of Story objects
stories.each do |story| # for each story object, call the print_headline method 
	story.print_headline ##### my stories are not right. :(((


