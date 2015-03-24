class Search
	attr_accessor :title, :comments, :upvotes 

	def start
		guide_lines
		users_choice
	end

	def criteria
		@title = title
		@comments = comments
		@upvotes = upvotes
	end 

	def guide_lines
		puts "To begin your search, please choose one search criteria:"
		puts "\ntitle tags\ncomments\nupvotes\n"
	end

	def users_choice
	# 	criteria.each_with_index do (item,i)
	# 		puts "#{item}: #{i}"
	
	# 	response = gets.chomp.to_s

	# 	# if response != "title tags" || "comments" || "upvotes"
	# 	# 	puts 'This is not a valid option. Please try again:'
	# 	# 	users_choice
	# 	# elsif response.to_s == "title tags" || "comments" || "upvotes"
	# 	# 	puts "Perfect."	
	# 	# end 
	# end
end
# criteria.each do |c|
# 	puts "Would you like to search using #{criterion}?"
# 	puts es or No


# 1) 	title keywords: Y/N?
# 		user input 

# 2)	Number of comments? Y/N?
# 		Most Comments or Least Comments

# 3) 	Number of upvotes? Y/N
# 		Most upvotes or least upvotes



#Search Criteria
#Search Criteria
#Search Criteria
#Search Criteria

########
#criteria should be linked to a class in the API file for searching. 
########

# there should be a main file for user communication 

