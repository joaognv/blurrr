class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :username, presence: true
  validates :city, presence: true
  validates :age, presence: true
  validates :gender, presence: true, inclusion: { in: ["Female", "Male"] }
  validates :preference, inclusion: { in: ["Men", "Women"] }

end
