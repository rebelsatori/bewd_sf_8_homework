class RockPaperScissorsController < ApplicationController
  def new
  end

  def show
  	@player_throw = params[:id].to_i
    @game_throw = rand(0..2)

    if @player_throw == 0
    	@player_item = 'Rock'
    elsif @player_throw == 1
    	@player_item = 'Paper'
    else
    	@player_item = 'Scissors'
    end	

    if @game_throw == 0
    	@game_item = 'Rock'
    elsif @game_throw == 1
    	@game_item = 'Paper'
    else
    	@game_item = 'Scissors'
    end	

    if (@game_throw - @player_throw) == 0
    	@result = 'Tie'
    elsif (@game_throw - @player_throw) == 1
    	@result = 'You Lose'
    elsif (@game_throw - @player_throw) == -1
    	@result = 'You Win'
	elsif (@game_throw - @player_throw) == 2
    	@result = 'You Win'
    elsif (@game_throw - @player_throw) == -2
    	@result = 'You Lose'
	else
    	@result = 'Error'
    end
  end
end
