class PplInSpace
	attr_accessor :num_ppl_in_space, :names_ppl_in_space

	def initialize
		@num_ppl_in_space = num_ppl_in_space
		@names_ppl_in_space = []
	end

	# Method to get number and names of people in space
	def how_many_ppl_in_space()
		# Create a hash and load with number and names of people in space
		astros_hash = JSON.load(RestClient.get("http://api.open-notify.org/astros.json"))
		
		# Create another hash just for the names and load each name into it
		astro_names = []
		astros_hash['people'].each do |person| 
			astro_names << person['name'].to_s 
		end

		# Print the number and names of people in space
		puts "There are " + astros_hash['number'].to_s + " people in space right now: " + astro_names.join(", ") + ".\n\n"
		# Instantiate a new object for the user
		choice = Chooser.new
		choice.choose_an_action
	end
end