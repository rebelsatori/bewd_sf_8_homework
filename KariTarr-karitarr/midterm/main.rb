
#takes user input on the command line
#connects to a third party API where the call varies based on what the user gives you
#


require_relative 'lib/story'
require_relative 'lib/reddit'


# 1  create a new Reddit instance
reddit = Reddit.new

# 2 populate the stories attribute in the Reddit object
reddit.fetch_stories

# 3 display a list of existing subreddits to choose from
puts reddit.get_subreddits

# 4 ask user to input a subreddit
puts "please type a subreddit based on the list above:"
users_subreddit_choice = gets.chomp

#check to see if the users value exists in the list of subreddits, if so, display headline, if not error
if reddit.get_subreddits.include?(users_subreddit_choice)
	reddit.stories.each do |story| 
		if story.subreddit == users_subreddit_choice	
			puts story.headline 
		end 
	end	
	else puts "error"
end  

