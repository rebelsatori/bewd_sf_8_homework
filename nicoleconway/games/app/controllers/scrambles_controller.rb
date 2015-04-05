class ScramblesController < ApplicationController
  def new
  	@clean_word = 'computer'
    @dirty_word = string_shuffle(@clean_word)
  end

  def string_shuffle(s)
	s.split("").shuffle.join
  end

  def show
  	if @clean_word == @guess
    	@result = 'You Win'
    else
    	@result = 'You Lose'
    end
  end
end
