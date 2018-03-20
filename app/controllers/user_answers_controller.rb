class UserAnswersController < ApplicationController
  def create
    answer_id = params[:picked_answer_id].to_i
    user_ans = UserAnswer.new(answer_id: answer_id, user: current_user)
    user_ans.save

    # @answer = Answer.find(answer_id)
    # @answer.question_id
    # next_question_id = (@answer.question_id + 1)
    # next_question = Question.where(id: next_question_id).first

    # look for the question with the lowest id that the
    # current_user has NOT answered yet
    # 1. get all the question ids ALREADY answered
    already_answered_question_ids = current_user.user_answers.map do |user_answer|
      user_answer.answer.question_id
    end
    # 2. look for the first question whose id is NOT in this list
    next_question = Question.where.not(id: already_answered_question_ids).first

    if next_question.nil?
      redirect_to new_match_path
    else
      redirect_to question_path(next_question)
    end
  end




  private

  def user_answer_params
    params.require[:question].permit(answer: [:id])
  end
end
