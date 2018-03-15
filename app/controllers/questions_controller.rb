class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end
  def show
    # make this go
  end
end
