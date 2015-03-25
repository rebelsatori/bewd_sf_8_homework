class RockPaperScissorsController < ApplicationController
  def new
  end

  def show
  	@random_throw = rand(0..2)
  	@user_throw = params[:id].to_i

  	if @user_throw == @random_throw
		@game_result = 'Tie!'
	elsif @user_throw == 0 && @random_throw == 1
		@game_result = 'Win!'
	elsif @user_throw == 0 && @random_throw == 2
		@game_result = 'Lose!'
	elsif @user_throw == 1 && @random_throw == 0
		@game_result = 'Lose!'
	elsif @user_throw == 1 && @random_throw == 2
		@game_result = 'Win!'
	elsif @user_throw == 2 && @random_throw == 0
		@game_result = 'Win!'
	else @user_throw == 2 && @random_throw == 1
		@game_result = 'Lose!'	
	end
  end	

end  	
