class Story
	attr_accessor :title, :ups, :url 

	def initialize(title, ups, url)
		@title = title
		@ups = ups
		@url = url
	end
end