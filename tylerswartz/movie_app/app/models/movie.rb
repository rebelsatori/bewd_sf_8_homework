class Movie < ActiveRecord::Base
	validates :title, presence: true
	validates :year_released, numericality: {greater_than: 1900}
	validates :description, presence: true

	def self.search(query)
		if query
  		Movie.where('title LIKE :search',{search: "%#{query}%"})
  	else
  		Movie.all
  	end
	end
end


