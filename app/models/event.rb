class Event < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  validates :name, :event_date, :description, :cuisine, :price_per_guest, :max_guests, :address, presence: true
  mount_uploader :photo, PhotoUploader
end
