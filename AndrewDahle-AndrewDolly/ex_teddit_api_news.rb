# Step 1: Working with Arrays and Hashes

# Copy your solution from ex_teddit_conditional.rb in 02_Variables_Conditionals
# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array 
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 
#
#



# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

require 'json'
require 'rest-client'

json = RestClient.get('http://www.reddit.com/.json')
reddit_result = JSON.load json


def reddit (reddit_result)
  stories = []
  reddit_result['data']['children'].each do |x|
    output = {}
    output['title'] = x['data']['title'] 
    output['category'] = x['data']['subreddit']
    output['upvotes'] = x['data']['ups']  
    stories.push(output)
  end
  stories
end

answer = reddit(reddit_result)

puts answer












# stories = []

# def reddittPull
# 	require 'json'
# 	require 'rest-client'
# 	reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
# 	lead = result['data']['children']

# 	leadTitle = lead + .each['data']['title']
# 	leadCat = lead + .each['data']['somtehint']
# 	leadUpvotes = lead + .each['data']['something']

# 	titles.push 'stories'
# end



# require 'json'
# require 'rest-client'

# json = RestClient.get('http://www.reddit.com/.json')
# reddit_result = JSON.load json


# def reddit (reddit_result)
#   stories = []
#   reddit_result['data']['children'].each do |x|
#     output = {}
#     output['title'] = x['data']['title'] 
#     output['category'] = x['data']['subreddit']
#     output['upvotes'] = x['data']['ups']  
#     stories.push(output)
#   end
#   stories
# end

# answer = reddit(reddit_result)

# puts answer


