class Match < ApplicationRecord
  has_many :user_matches
  has_many :users, through: :user_matches
  has_many :messages

  def last_message
    self.messages.last&.message
  end
end
