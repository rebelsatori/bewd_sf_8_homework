class ScramblersController < ApplicationController
  def new
    @word_answer = 'password'
    @word_scramble = @word_answer.split('').shuffle.join
  end

  def create
    if params[:solution] == params[:guess].downcase
      @outcome_partial = 'win'
    else
      @outcome_partial = 'lose'
    end
    @word_answer = params[:solution]
    @word_scramble = params[:problem]
  end

  def show
    @word_answer = params[:solution]
    @word_scramble = params[:problem]
    puts "word answer: #{@word_answer}"
    puts "word scramble: #{@word_scramble}"
  end
end
