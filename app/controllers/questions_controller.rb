class QuestionsController < ApplicationController

  def index
    @questions = Question.all.select {|a| a.answered_by(current_user) ? false : a }
  end
  def show
    # make this go
  end
  def update

  end
end
