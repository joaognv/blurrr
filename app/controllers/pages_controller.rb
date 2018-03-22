class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    # 1. get all the question ids ALREADY answered
    already_answered_question_ids = current_user.user_answers.map do |user_answer|
      user_answer.answer.question_id
    end
    # 2. look for the first question whose id is NOT in this list
    next_question = Question.where.not(id: already_answered_question_ids).first
    @matches = current_user.matches
    @questions = Question.all
    unless current_user.profile
      flash[:alert] = "You must have a profile. Please fill out the form"
      redirect_to new_profile_path
    end
    unless current_user.user_answers.count > 4
      flash[:alert] = "It's gonna be really quick. We promise the questions are not boring."
      redirect_to question_path(next_question)
    end
    # end

  end

end
