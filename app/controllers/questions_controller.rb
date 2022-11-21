class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:questions]
    @answer = stupid_coach(@questions)
  end

  def stupid_coach(reply)
    if reply == "I am going to work"
      return "Great!"
    elsif reply.include?('?')
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
