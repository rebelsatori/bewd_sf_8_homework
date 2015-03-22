class RpsController < ApplicationController


  def new
  	@throws = throws
  end

  def show
  	@player_throw = params[:id]
  	@computer_throw = throws.sample
  	@outcome = outcome(@player_throw, @computer_throw)
  end

  def throws
		['rock', 'paper', 'scissors']
	end

	def outcome(player_throw, computer_throw)

		beats = {
			'rock' => 'scissors',
			'scissors' => 'paper',
			'paper' => 'rock'
		}

		if player_throw == computer_throw then 'stalemate'
		elsif beats[player_throw] == computer_throw then 'win'
		else 'lose'
		end

	end


end
