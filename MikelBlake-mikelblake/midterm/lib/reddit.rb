require 'json'
require 'rest-client'

class Reddit

	def initialize
		@stories = []
	end

	def fetch_stories
		user_search_term = gets.chomp
		reddit = JSON.load(RestClient.get("http://www.reddit.com/search.json?q=#{user_search_term}"))
		story_array = reddit['data']['children']

      story_array.each do |story|
        title = story['data']['title']
        selftext = story['data']['selftext']
        url = story['data']['url']
        @stories << Story.new(title, selftext, url)
      end 
   end

	def print_stories
		@stories.each do |story|
			puts @stories
	end
end