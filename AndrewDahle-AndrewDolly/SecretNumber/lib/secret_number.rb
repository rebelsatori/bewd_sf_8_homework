# this class will generate our secret number for us
class SecretNumber
 
	attr_accessor :answer

	def initialize
		@answer = rand(1..15)
	end	
end
