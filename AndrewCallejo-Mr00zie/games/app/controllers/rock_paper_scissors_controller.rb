class RockPaperScissorsController < ApplicationController
  def new
  end

  def get_image_url(id)
    if id == 0 
      return "paper.jpeg"
    end
    if id == 1
      return "rock.jpeg"
    end 
    if id == 2
     return "scissors.jpeg"
   end
 end 

 def show
  @chosen_shot = params[:id].to_i
  @secret_shot = rand(0..2)

  @chosen_shot_image = get_image_url(@chosen_shot)
  @secret_shot_image = get_image_url(@secret_shot)


    # 0 win 1, 1 win 2, 2 win 0
    # 0/0, 1/1, 2/2 is tie
      if(@chosen_shot == @secret_shot)
        @outcome_partial = "tie"
      elsif((@chosen_shot == 0 && @secret_shot == 1) ||
       (@chosen_shot == 1 && @secret_shot == 2) ||
       (@chosen_shot == 2 && @secret_shot == 0 ) )
      @outcome_partial = "win"
    else
     @outcome_partial = "lose"
   end
  end
end
