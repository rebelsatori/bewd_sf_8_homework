class RockPapersScissorsController < ApplicationController
  def new
  end

  def show
  	@player_throw = params[:id].to_i
  	@game_throw = rand[1..3]
  end
end


<h1>Welcome to Rock Papers Scissor!</h1>
<p>To play this game, all you have 
