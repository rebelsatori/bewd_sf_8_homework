class MoviesController < ApplicationController
	
	#Update your movie's index.html.erb so that it lists all movies in the database. (Google is your friend).

	#Rails console is also your friend. Use it to explore active record methods that will help you interact with the database.

	def index
		@all_movies = Movie.all	
	end
end
