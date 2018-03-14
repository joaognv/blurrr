class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :profile
  has_many :messages
  has_many :user_answers
  has_many :answers, through: :user_answers
  has_many :user_matches
  has_many :matches, through: :user_matches
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
