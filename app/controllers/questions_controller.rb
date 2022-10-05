class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = ''
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question].ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end

end
