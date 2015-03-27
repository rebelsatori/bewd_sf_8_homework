class RockPaperScissorsController < ApplicationController
  def new
  end

  def show
    @chosen_action = params[:id]
    random = rand (0..2)
    if random == 0 then @secret_action='rock'
     elsif random ==1 then @secret_action='paper' 
      elsif random==2 then @secret_action='scissors'
      end
    #  puts @secret_action
    
    if @chosen_action == @secret_action then @outcome_partial = 'tie'
    else @outcome_partial= 'win'
    
    #if @chosen_action =='rock' then 
     # if @secret_action = 'scissors' then @outcome_partial='win'
      #elsif @secret_action = 'paper' then @outcome_partial='lose'
       # else @outcome_partial = 'tie'
        #end
    end  

    #then if @secret_action=='rock' then @outcome_partial = 'tie' 
     #    elsif @secret_action=='scissors' then @outcome_partial = 'win'
      #              else @outcome_partial='lose'
    end
    
  end

