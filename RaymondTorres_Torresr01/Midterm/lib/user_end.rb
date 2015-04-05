class User
	:response

	def users_response
		while	@response = gets.strip
			users_choice
		end
	end

	def users_choice

		if @response == "1" #title
			engage=API.new
			engage.title_output
		elsif @response == "2" #comments
			engage=API.new
			engage.comments_output
		elsif @response == "3" #upvotes
			engage=API.new
			engage.upvote_output
		else	
			users_mistake
		end
	end

	def users_mistake
			puts "#{@response} is not a valid option."
			engage=Search.new
			engage.start
	end
end
