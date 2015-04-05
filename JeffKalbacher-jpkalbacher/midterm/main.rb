require 'json'
require 'rest_client'

require_relative "lib/category"
require_relative "lib/story"

@category = Category.new

def question(story)
	puts story.display
	handle_answer(gets.chomp, story)
end

def valid_answer?(answer)
	['yes','no'].include?(answer.downcase)
end

def validate_answer(answer)
	if valid_answer?(answer)
	else
		puts "that is not a valid input"
	end
end

def handle_answer(answer, story)
	validate_answer(answer)

	if answer.downcase == 'yes'
		story.read_story
	elsif answer.downcase == 'no'
		"how about this one?"
	end	
end

@category.stories.each do |story|
	question(story)
end

