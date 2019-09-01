class QuestionsController < ApplicationController

  # Input from the user triggers the respective answer of the coach
  # only if the user types "I am going to work right now" the coach says great
  # in the answer view the question and the answer are displayed

  def ask
    # just for viewe
  end

  def answer
    @question = params[:advice]

    if @question == 'I am going to work right now!'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question != 'I am going to work right now!' && !@question.include?('?')
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
