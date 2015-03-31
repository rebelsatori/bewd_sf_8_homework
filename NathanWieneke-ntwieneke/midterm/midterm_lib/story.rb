class Story
	attr_accessor :title, :upvotes, :url, :argument
	def initialize(title, url, upvotes, argument)
		@title = title
		@upvotes = upvotes
		@url = url
		@argument = argument
	end
	def headline
		puts "Title: #{@title} " 
		puts "Upvotes: #{@upvotes} " + "Url: #{url} " + "Source: #{@argument} "
	end
end
