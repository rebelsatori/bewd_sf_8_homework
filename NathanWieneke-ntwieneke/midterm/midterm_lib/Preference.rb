class Preference
	attr_accessor :yes, :like, :check
	def initialize
		@yes = 0
	end
	def like
		x = 0
		y = 0
		while x < 4 do
			new_reddit = Reddit.new
			new_reddit.fetch_stories
			puts new_reddit.stories[x].headline
			puts "Do you like this headline?"
			user_like = gets.chomp
				if user_like == 'yes'
					y = y + 1
					x = x +1
					puts "y is at #{y}"
					puts "x is at #{x}"
				elsif user_like == 'no'
					x = x + 1
					puts "y is at #{y}"
					puts "x is at #{x}"
				else
					puts "please enter (yes) or (no)"
				end
			@yes << y
			end
		end
	def check
		puts "You liked #{@yes} headlines"
		if @yes > 2
			puts "You are easy to please!"
		else 
			puts "You are picky, here are some more stories"
			new_reddit = Reddit.new
			new_reddit.fetch_stories
			puts new_reddit.stories[5, 10]
		end
	end
end