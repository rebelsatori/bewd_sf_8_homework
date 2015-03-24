class Preference
	attr_accessor :yes, :like, :check
	def initialize
		@yes = 0
	end
	def like
		x = 0
		y = 0
		while x < 10
			puts new_reddit.stories[x].headline
			puts "Do you like this headline"
			user_like = gets.chomp
				if user_like == 'yes'
					y = y + 1
					x = x +1
				elsif user_like == 'no'
					x = x + 1
				else
					puts "please enter (yes) or (no)"
				end
			@yes << y
			end
		end
	def check
		puts "#{@yes}"
	end
end