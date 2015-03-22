class Reddit

	attr_accessor :story

	def fetch_stories
		require 'json'
		require 'rest-client'
		user_search_term = gets.chomp
		reddit = JSON.load(RestClient.get("http://www.reddit.com/search.json?q=#{user_search_term}"))
		story_array = reddit['data']['children']

      story_array.each do |story|
        title = story['data']['title']
        selftext = story['data']['selftext']
        url = story['data']['url']
        @stories << Story.new(title, selftext, url)
      end 

      @stories
    end

	# def 


	# end

end