#main
require_relative 'midterm_lib/preference.rb'
require_relative 'midterm_lib/reddit.rb'
require_relative 'midterm_lib/story.rb'

#new_reddit = Reddit.new.fetch_stories
#new_reddit.fetch_stories
# puts new_reddit.stories[3].headline
new_preference = Preference.new
new_preference.like
new_preference.check
