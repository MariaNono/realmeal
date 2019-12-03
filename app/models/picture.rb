class Picture < ApplicationRecord
  belongs_to :event
  mount_uploader :photo, PhotoUploader
end
