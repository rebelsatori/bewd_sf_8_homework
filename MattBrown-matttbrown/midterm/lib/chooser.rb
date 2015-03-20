class Chooser

	def initialize()
	end

	def choose_an_action()
		puts "====================================\nYou can:\n(1) See what ISS is above now,\n(2) See when ISS will be above a specific location next,\n(3) See how many people are in space, or\n(4) Quit\n====================================\n\nWhat do you want to do?\n"
		@choice = gets.chomp
		
		# Make sure the user enters a valid command
		if @choice.to_i.between?(1,4) == false
			puts "Please enter a valid command"
			choose_an_action
		else

			# Instantiate different objects based on the user's valid command
			if @choice.to_i == 1
				geo = Geolocate.new
				lat, lon = geo.get_iss_lat_lon
				geo.reverse_geocode(lat,lon)
			elsif @choice.to_i == 2
				next_loc = Geolocate.new
				lat, lon = next_loc.get_address_lat_lon
				next_loc.when_is_iss_overhead_next(lat,lon)
			elsif @choice.to_i == 3
				in_space = PplInSpace.new
				in_space.how_many_ppl_in_space
			elsif @choice.to_i == 4
				puts "Okay, goodbye!"	
				exit
			end
		end
	end

end
