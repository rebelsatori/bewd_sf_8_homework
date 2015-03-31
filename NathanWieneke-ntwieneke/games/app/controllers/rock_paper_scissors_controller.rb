class RockPaperScissorsController < ApplicationController
  def new
  end

  def show
  	@player_hand = params[:id].to_i
  	@computer_hand = rand(2)
  	@player_win = (@player_hand == @computer_hand + 1 || @player_hand + 2 == @computer_hand)
  	@player_draw = (@player_hand == @computer_hand)
	@player_lose = (@player_hand == @computer_hand - 1 || @player_hand - 2 == @computer_hand)
	if @player_win
		@rps_outcome_partial = 'win'
	elsif @player_lose
		@rps_outcome_partial = 'lose'
	else 'draw'
	end
  end
end
