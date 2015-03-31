class MoviesController < ApplicationController

  def index
  	@movies = Movie.search(params[:q])

  	#old way to search and show results.
  	# if params[:q]
  	# 	@movies = Movie.where('title LIKE :search',{search: "%#{params[:q]}%"})
  	# else
  	# 	@movies = Movie.all
  	# end
  end


  def new
  	@movie = Movie.new
  end


  # POST /movies
  def create
    @movie = Movie.new(movie_params)    # Not the final implementation!
    if @movie.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    if @movie.present?
      @movie.destroy
    end
    redirect_to root_url
  end


  private
  	def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(:title, :year_released, :description)
    end
end
