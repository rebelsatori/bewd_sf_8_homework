class RockPaperScissorsController < ApplicationController
  def new
  end

  def show
    @throw_number = params[:id].to_i
    @throw = rand(0..2)
    #@rock = 0
    #@paper = 1
    #@scissors = 2
    @player_won = (@throw_number == @throw)

    if @player_won
      @outcome_partial = 'win'
    else
      @outcome_partial = 'lose'
    end
  end
end
