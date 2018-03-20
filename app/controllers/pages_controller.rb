class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @matches = current_user.matches
    @questions = Question.all
    unless current_user.profile
      flash[:alert] = "You must have a profile. Please fill out the form"
      redirect_to new_profile_path
    end
  end

end
