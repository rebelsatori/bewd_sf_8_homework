# this class will generate our secret number for us
class SecretNumber
	attr_accessor :secret

	def initialize
		@secret = rand(1..10)
	end

	def number
		puts @secret
	end

	def to_i
		@secret
	end
end
