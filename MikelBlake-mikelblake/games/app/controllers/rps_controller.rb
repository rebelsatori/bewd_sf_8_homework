class RpsController < ApplicationController
  def new
  	@rps = {'rock' => 0, 'paper' => 2, 'scissors' => 3}
  end

  def show
  	@throw = params[:id].to_i
  	@c_throw = rand(0..2)

  	@tie = (@throw == @rps)
  	@player_won = (@throw > @rps)
  	@player_lost = (@throw < @rps)

  	
  end
end
