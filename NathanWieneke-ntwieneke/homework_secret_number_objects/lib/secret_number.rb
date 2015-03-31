# this class will generate our secret number for us
class Secret
	attr_accessor :roll
	def intialize
		@roll = rand(10) + 1
	end
end
