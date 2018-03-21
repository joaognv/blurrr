class Match < ApplicationRecord
  has_many :user_matches
  has_many :users, through: :user_matches
  has_many :messages

  def last_message
    self.messages.last&.message
  end

  def calc_blur
    message_count = self.messages.length
    message_count = 5 if message_count > 5
    "#{5 - message_count}px"
  end
end
