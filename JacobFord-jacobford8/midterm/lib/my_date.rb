
class MyDate
	attr_accessor :user_date

	def initialize
		@user_date = user_date
	end	

	def format_date(user_date)
		#make sure the date is in the format I want.
		if /^[0-9]{4}+-[0-9]{2}+-[0-9]{2}+$/ =~ @user_date
			@user_date
		else
			puts "That is not a valid date!"
			puts @user_date.class
			puts @user_date
		end		
		@user_date 
	end	

end	