class Player
attr_accessor :player_name

	def initialize
		puts "Hello! And your name dear player? And what is that chocolate in your mouth?! Gimme that!!!"
		@player_name = gets.chomp
	end

end
