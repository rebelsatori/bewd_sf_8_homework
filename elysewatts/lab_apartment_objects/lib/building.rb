#Building Class
class Building
attr_accessor :building_name, :building_address, :building_unit_count, :apartments

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		@apartments.each do |apt|
			puts " --- #{@building_name} --- " 
			puts "Unit: " + apt.name 
			puts apt.apt_sqft.to_s + " sqft " + apt.apt_bedrooms.to_s + " bed/" + apt.apt_bathrooms.to_s + " bath" 

		end

	end

	
end
