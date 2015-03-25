class Story
	attr_accessor :title, :content, :author

	def initialize(json)
		@title = json['title']
		@author = json['author']
		@content = json['content']
	end

	def display
		"Do you want to read #{@title} by #{@author}?"
	end

	def read_story
		puts '-'*80
		puts "title: #{@title}"
		puts '-'*80
		puts "author: #{@author}"
		puts '-'*80
		puts "content:' #{@content}"
		puts '-'*80
	end
end