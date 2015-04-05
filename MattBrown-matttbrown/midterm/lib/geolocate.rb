class Geolocate
	require 'json'
	require 'rest-client'
	require 'time_diff'

	attr_accessor :iss_lat, :iss_lon, :pretty_time_until_overhead

	def initialize
		@iss_lat = iss_lat
		@iss_lon = iss_lon
		@pretty_time_until_overhead = pretty_time_until_overhead
	end

	def choose_again
		choice = Chooser.new 
		choice.choose_an_action
	end

	# Load ISS's current location from the ISS API and parse the latitude / longitude from the hash
	def get_iss_lat_lon()
		@iss_loc_hash = JSON.load(RestClient.get("http://api.open-notify.org/iss-now.json"))
		@iss_lat = @iss_loc_hash['iss_position']['latitude']
		@iss_lon = @iss_loc_hash['iss_position']['longitude']
		puts "Latitude: " + @iss_lat.to_s + " // Longitude: " + @iss_lon.to_s
		return @iss_lat,@iss_lon
	end

	# Take latitude and longitude as arguments and return the nearest address via Google Maps API
	# If there's no near and valid address, return an error
	def reverse_geocode(lat, lon)
		url = "http://maps.googleapis.com/maps/api/geocode/json?latlng=" + lat.to_s + "," + lon.to_s
		@geocode_hash = JSON.load(RestClient.get(url))
		if @geocode_hash['results'] == []
			puts "Try again soon.  ISS is probably out over an ocean.  See http://iss.astroviewer.net/\n\n"
		else
			puts @geocode_hash['results'][0]['formatted_address'] + "\n\n"
		end
		choose_again
	end

	# Get an address from user's input and turn into lat/lon via Google Maps API
	# Return an error if there's no valid address
	def get_address_lat_lon()
		puts "Enter your address"
		@address = gets.chomp
		url = "http://maps.googleapis.com/maps/api/geocode/json?address=" + @address.gsub(' ',"+")
		home_address_geocode_hash = JSON.load(RestClient.get(url))
		if home_address_geocode_hash['status'] == "ZERO_RESULTS"
			puts "Address not found, please try again!\n\n"
			get_address_lat_lon
		else
			@address_lat = home_address_geocode_hash['results'][0]['geometry']['location']['lat']
			@address_lon = home_address_geocode_hash['results'][0]['geometry']['location']['lng']
			return @address_lat, @address_lon
		end
	end

	# Take the user's current lat/long as arguments and send those to ISS API, which returns a hash of when ISS will be passing next
	# Then send that hash to the clean_time_til method to get a pretty version of time to print
	def when_is_iss_overhead_next(lat,lon)
		@iss_overhead_hash = JSON.load(RestClient.get("http://api.open-notify.org/iss-pass.json?lat=" + lat.to_s + "&lon=" + lon.to_s))
		time_next_overhead = Time.at(@iss_overhead_hash['response'][0]['risetime'])
		clean_time_til(time_next_overhead)
		puts "ISS will be over " + @address + " in " + @pretty_time_until_overhead + "\n\n"
		choose_again
	end

	# Take a hash of time until ISS passes over a given location, and return a pretty version of it
	def clean_time_til(time_next_overhead)
		time_now = Time.now
		time_til_overhead_hash = Time.diff(time_now,time_next_overhead)
		if time_til_overhead_hash[:hour] == 0
				pretty_hour = ""
			elsif time_til_overhead_hash[:hour] == 1
				pretty_hour = time_til_overhead_hash[:hour].to_s + " hour, "
			elsif time_til_overhead_hash[:hour] > 1
				pretty_hour = time_til_overhead_hash[:hour].to_s + " hours, "
		end
		if time_til_overhead_hash[:minute] == 0
			pretty_minute = ""
			elsif time_til_overhead_hash[:minute] == 1
				pretty_minute = time_til_overhead_hash[:minute].to_s + " minute and "
			elsif time_til_overhead_hash[:minute] > 1
				pretty_minute = time_til_overhead_hash[:minute].to_s + " minutes and "
		end
		if time_til_overhead_hash[:second] == 0
			pretty_minute = ""
			elsif time_til_overhead_hash[:second] == 1
				pretty_second = time_til_overhead_hash[:second].to_s + " second."
			elsif time_til_overhead_hash[:second] > 1
				pretty_second = time_til_overhead_hash[:second].to_s + " seconds"
		end
		@pretty_time_until_overhead = pretty_hour.to_s + pretty_minute.to_s + pretty_second.to_s
	end
end