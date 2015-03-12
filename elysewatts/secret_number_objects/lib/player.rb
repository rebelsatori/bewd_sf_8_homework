class Player
attr_accessor :player_name

	
	def initialize
		puts "Hello player. What is your name?"
		@player_name = gets.chomp
	end



end
