class SecretNumber
#attr_accessor :secret_number

	def initialize
		one_thru_ten = Array(1..10)
		@secret_number = one_thru_ten.sample
	end

end
