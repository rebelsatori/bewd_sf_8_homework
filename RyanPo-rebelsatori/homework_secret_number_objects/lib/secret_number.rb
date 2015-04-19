class Secret_number
attr_accessor :secret_number

	def initialize
		one_to_ten = Array(1..10)
		@secret_number = one_to_ten.sample
	end

end
