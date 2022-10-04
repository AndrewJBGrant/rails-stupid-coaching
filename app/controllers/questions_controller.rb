good_question = 'I am going to work'
good_answer = 'Great!'
silly_answer = 'Silly question, get dressed and go to work!'
mean_answer = 'I dont care, get dressed and go to work!'

class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
end

private

  def stupid_coach(str)
    question?(str) ? silly_answer : (str === good_question ? good_answer : mean_answer)
  end

  def question?(str)
    (str === nil) ? false : str.end_with?("?")
    end
end
