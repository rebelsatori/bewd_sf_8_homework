class Plant < ActiveRecord::;Base
   validates :name, :germinationstageconditionandlength, :vegetativestageconditionandlength, :floweringstageconditionandlength, :soilph, :totaldissolvedsolids, :nutrientrequirements, :wateringinstructions, :lightingcondition, :humidity, :temperature, :enhancements, :commonailments, :maximumsoilareaforgrowth, :highestreportedyield	
end

