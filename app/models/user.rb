class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :messages
  has_many :user_answers
  has_many :answers, through: :user_answers
  has_many :matches, through: :user_matches
  has_many :user_matches
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
