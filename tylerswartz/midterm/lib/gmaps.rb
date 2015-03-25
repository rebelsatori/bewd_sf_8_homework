class GoogleMaps
	attr_accessor :zipcode, :lat, :lng

	def initialize
	end

	def start
		ask_zipcode
		request_api
		output
		ask_exit
	end

	def ask_zipcode
		puts "Enter a zipcode to find it's latitude and longitude..."
		@zipcode = gets.chomp

		while zipcode.to_s.length != 5
	  	puts "Thats not a valid zipcode. Please try again"
	  	@zipcode = gets.chomp
		end
	end

	def request_api
		maps_api = JSON.load(RestClient.get("http://maps.googleapis.com/maps/api/geocode/json?address=" + @zipcode))
		@lat = maps_api['results'][0]['geometry']['location']['lat']
		@long = maps_api['results'][0]['geometry']['location']['lng']
	end
	
	def output
		puts "Here is the latitude and longitude of " + @zipcode.to_s + "..."
		puts "Latitude: " + @lat.to_s
		puts "Longitude: " + @long.to_s
	end

	def ask_exit
		loop do
			puts 'Would you like to check another zipcode? (y/n)'
			answer = gets.chomp

			if answer == 'y'
	    	self.start
	  	elsif answer == 'n'
	    	puts "Thanks for using Google Maps API"
	    	exit
	  	else
	    	puts "Please enter a valid choice option! (y/n)"
	  	end
	  end
	end
end
