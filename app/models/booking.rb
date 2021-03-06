class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :number_of_guests, presence: true, numericality: { only_integer: true }
  has_one :review, dependent: :destroy
  accepts_nested_attributes_for :event
end
