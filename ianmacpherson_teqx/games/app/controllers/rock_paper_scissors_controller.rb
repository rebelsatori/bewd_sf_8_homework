class RockPaperScissorsController < ApplicationController
  def new
  end

  def show
    @throw = rand(0..2)
    @guess = params[:id].to_i

    @image_array = ["rock_paper_scissors/rock.jpeg",
                    "rock_paper_scissors/paper.jpeg",
                    "rock_paper_scissors/scissors.jpeg"]
  end
end
