class Search

	def start
		prompt
		user_end
	end

	def prompt
		puts "Please choose a search criteria using the numerical value:"
		puts "\n1 - Title - Articles are populated by titles in alphebatical order"
		puts "2 - Comments - Articles are populated by number of comments (greatest to least)"
		puts "3 - Upvotes - Articles are populated by number of upvotes (greatest to least)"							
	end

	def user_end
		engage = User.new
		engage.users_response
		@response = gets.strip
	end

	def end_program
			puts "Would you like to search again? Please enter: yes or no"
			another_go = gets.strip
			if another_go == "no"
				abort( "Thank you for using Reddit Search Engine.")
			elsif another_go == "yes"
				prompt
			else 
				puts "#{another_go} is not a valid option."
				end_program
			end
	end
end

