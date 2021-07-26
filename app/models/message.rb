class Message < ApplicationRecord
  belongs_to :user
  belongs_to :channel

  # validates :content, length: { minimum: 1, maximum: 1000 }
  # validates :content, presence: true

end
