class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :username, presence: true
  validates :city, presence: true
  validates :age, presence: true
  validates :gender, presence: true, inclusion: { in: ["female", "male"] }
  validates :preference, inclusion: { in: ["men", "women"] }

end
