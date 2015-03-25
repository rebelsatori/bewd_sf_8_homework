class API
	attr_accessor	:title, :reddit_st, :url

	def redd
		require 'json'
		require 'rest-client'
		json_reddit = RestClient.get('https://www.reddit.com/.json')
		reddit = JSON.load json_reddit
		@reddit_st = reddit['data']['children']
	end

			def title_output
				redd
				
				def output_format
					"\nTitle: " + @title.to_s + "\n" + "URL: " + @url.to_s + "\n" 
				end 
				
				@reddit_st.each do |story|
					@title = story['data']['title']
					@url = story['data']['url']
					puts output_format
				end
				ending
			end

			def comments_output
				redd

				def output_format
					"\nNumber of Comments:" + @comments.to_s + "\n" + "Title: " + @title.to_s + "\n" + "URL: " + @url.to_s + "\n" 
				end 
				
				@reddit_st.each do |story|
					@comments = story['data']['num_comments']
					@title = story['data']['title']
					@url = story['data']['url']
					puts output_format
				end
				ending
			end

			def upvote_output
				redd
				def output_format
					"\nNumber of Upvotes:" + @upvotes.to_s + "\n" + "Title: " + @title.to_s + "\n" + "URL: " + @url.to_s + "\n" 
				end 
				
				@reddit_st.each do |story|
					@upvotes = story['data']['ups']
					@title = story['data']['title']
					@url = story['data']['url']
					puts output_format
				end
				ending
			end
		
		def ending
		user=Search.new
		user.end_program
		end
end 
