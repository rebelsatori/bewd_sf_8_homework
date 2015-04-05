require_relative 'lib/reddit.rb'
require_relative 'lib/story.rb'

puts '****************************************************************'
puts 'Welcome to Reddit Search.'
puts ''
puts 'Type in a word and I will show you stories related to that word.'

reddit = Reddit.new

reddit.fetch_stories
reddit.print_stories