class StoryList
	
	def initialize
		@story_list = []
	end

	def add_story(story)
		@story_list << story
	end

	def clear_stories
		@story_list = []
	end

	def show_stories
		@story_list.each do |story|
			puts "Story: #{story.title}\nUps: #{story.ups}\nUrl: #{story.url}\n\n" 
			puts "-"*40 + "\n\n"
		end
	end

end
