# this class will generate our secret number for us
class SecretNumber
	attr_reader :r_number

	def initialize
		@r_number = r_number
	end

	def get_number
		@r_number = 2 + rand(8)
		@r_number
	end
end
