class Event < ApplicationRecord
  belongs_to :user
  validates :name, :event_date, :description, :cuisine, :price_per_guest, :max_guests, :address, presence: true
end
