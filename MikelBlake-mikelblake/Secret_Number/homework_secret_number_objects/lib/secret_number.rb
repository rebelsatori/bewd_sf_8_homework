# this class will generate our secret number for us
class SecretNumber
	attr_reader :answer
	def initialize
		@answer = rand(1..10)
	end
end
