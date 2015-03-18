# this class will generate our secret number for us
class SecretNumber
	attr_reader :secret

	def initialize
		@secret = rand(1..10)
	end
	
	def say_secret
		puts @secret_number
	end		 
end
