# this class will generate our secret number for us
class SecretNumber
	attr_reader :secret_number
	def initialize
		@secret_number = rand(10)
	end
end
