class ScramblesController < ApplicationController
  def new
  	words = Word.random
  	@random_word = words.name

  	def string_shuffle(s)
  		s.split("").shuffle.join
		end

		@scrambled_word	= string_shuffle(@random_word)
  end

  def show
		@guess = params[:guess]
		@word = params[:word]

		if @guess.upcase == @word.upcase
			@outcome_partial = 'win'
		else
			@outcome_partial = 'lose'
		end	
  end
end
