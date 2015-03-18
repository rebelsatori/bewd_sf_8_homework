require_relative 'lib/story'
require_relative 'lib/reddit'
require_relative 'lib/category'
require_relative 'lib/story_list'

def show_message(message)
	puts message
end

def show_message_no_newline(msg)
	print msg
	STDOUT.flush
end

def get_choice
	gets.to_i
end


def show_list
	show_message "What kind of sports story do you want to see?"
	show_message "1. Get Pro Sports stories"
	show_message "2. Get College Sports stories"
	show_message "3. Get Action Sports stories"
	show_message "4. Get Water Sports stories"
	show_message "5. None"
	show_message_no_newline "Choice (1-5): "
end


show_message("Welcome to your Reddit Sports News! You can pick what kinds of sports stories to read.")
show_list

loop do
	choice = get_choice
	if choice == 1
		reddit = Reddit.new("prosports")	
	elsif choice == 2
		reddit = Reddit.new("collegesports")
	elsif choice == 3
		reddit = Reddit.new("actionsports")
	elsif  choice == 4
		reddit = Reddit.new("watersports")
	elsif choice == 5
		break
	else
		show_message "I don't understand. Please choose 1-5"
		show_list
		next
	end
	puts reddit.category_url

	reddit.get_stories
	reddit.show_stories

	show_list
end


puts "Whatever.... BAI!"
		
