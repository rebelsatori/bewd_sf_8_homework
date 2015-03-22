# this class will generate our secret number for us
class Secretnumber
	attr_reader :secnum
	
	def initialize
		@secnum = rand(1..10)
		puts "answer is #{@secnum}"
	end

	# attr_reader:
	# def secnum
	# 	@secnum
	# end 

	# attr_writer:
	# def secnum=(x)
	# end 
end
