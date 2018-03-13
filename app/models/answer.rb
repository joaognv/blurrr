class Answer < ApplicationRecord
  has_many :users, through: :user_answers
  belongs_to :question
end
