class Message < ApplicationRecord
  belongs_to :event
  has_one :user
  validates :content, length: { minimum: 5 }
end
