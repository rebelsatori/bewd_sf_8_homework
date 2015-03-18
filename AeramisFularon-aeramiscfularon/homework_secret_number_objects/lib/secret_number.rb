# this class will generate our secret number for us
class SecretNumber
	attr_accessor :secret_number

	def generate_number
		@secret_number = rand(10) + 1
		@secret_number.to_i
	end

end
