# Nicole Conway number game
# this class creates and stores a random number between 1-10.

class SecretNumber
	attr_accessor :secret_number
	def initialize
		@secret_number = secret_number
	end

	def createnum
		#generate the random number to start the game
       @secret_number = rand(1..10)
       @secret_number
   	end
end


