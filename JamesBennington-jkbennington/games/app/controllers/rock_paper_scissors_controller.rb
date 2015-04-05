class RockPaperScissorsController < ApplicationController
  def new
  end

  	def show
  	@player_thrown = params[:id].to_i
  	@rock = 0
  	@paper= 1
  	@scissors = 2
  	@computer_thrown = rand(0..2)

  	
  		if @player_thrown == @computer_thrown
  		@outcome_partial = 'draw'
  		elsif @player_thrown == @rock 
  			if @computer_thrown == @paper
  			@outcome_partial == 'lose'
  			else
  			@outcome_partial == 'win'	
  		end
  		elsif @player_thrown == @paper
  			if @computer_thrown == @rock
  			@outcome_partial == 'win'
  			else 
  		    @outcome_partial == 'lose'
  		end
    	elsif @player_thrown == @scissors
    		if @computer_thrown == @paper
    		@outcome_partial == 'win'
    		else
    		@outcome_partial == 'lose'
    	end
		end
 	end
end