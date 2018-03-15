class Question < ApplicationRecord
  has_many :answers

  def answered_by(user)
    user.answers.collect(&:question).include?(self)
  end
end
