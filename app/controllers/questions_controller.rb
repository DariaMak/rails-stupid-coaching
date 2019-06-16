class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = nil
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
      # raise
    end
  end

  def show
    @question = question[params[:question]]
    @answer
  end
end
