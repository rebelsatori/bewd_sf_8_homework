# this class will generate our secret number for us
class SecretNumber
	attr_accessor :number
	def initialize
		@number = 6
	end
	def to_i
		number
	end
end