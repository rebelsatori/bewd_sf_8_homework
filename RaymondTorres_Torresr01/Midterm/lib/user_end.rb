class User
	:response

	def users_response
		while	@response = gets.strip
			users_choice
		end
	end

	def users_choice
			engage.API.new
			engage.output

		if @response == "1" #title
			@title_abc
		elsif @response == "2" #comments
			puts "2"
		elsif @response == "3" #upvotes
			puts "3"
		else	
			users_mistake
		end
	end

	def users_mistake
		# if @response != "1"||"2"||"3"
			puts "#{@response} is not a valid option."
			engage=Search.new
			engage.start
		# end
	end
end
