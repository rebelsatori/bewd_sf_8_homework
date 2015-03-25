class SecretNumbersController < ApplicationController
  def new
  end

  def show
  	@secret_number = rand(1..5)
  	@guess = params[:id].to_i
  end
end
