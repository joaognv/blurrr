class UserAnswersController < ApplicationController
  def create
    user_ans = UserAnswer.new
    user_ans.answer_id = params[:question][:answers].to_i
    user_ans.user = current_user
    user_ans.save
    redirect_to questions_path
  end

  private

  def user_answer_params
    params.require[:question].permit(answer: [:id])
  end
end
