class RockPapersController < ApplicationController
  def new
  end

  def show
    @player_throw = params[:id].to_i
    @robot_throw = rand(0..2)

    compare_hands(@player_throw,@robot_throw)
  end

  def compare_hands(player,robot)
  	case[player,robot]
      when [0,0],[1,1],[2,2]
  		@outcome_partial = 'tie' 
  	 when [0,1],[2,0],[1,2]
  		@outcome_partial = 'lose'
    else
      @outcome_partial = 'win'
    end
  end
end

