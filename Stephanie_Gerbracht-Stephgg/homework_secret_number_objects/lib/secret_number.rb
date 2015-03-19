# this class will generate our secret number for us
class SecretNumber
	attr_accessor :sec_number 
	
	def initialize 
		@sec_number = rand(1..10)
		puts "secret number is #{@sec_number}"
	end 	
		# @number = Array.new 

	# 10.times do|number|
	# 	num +=1
	# 	@number.push num 
	# end 	
	# @number =@number.sample 


end