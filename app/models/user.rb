class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events
  has_many :bookings
  has_many :reviews, through: :bookings
  mount_uploader :photo, PhotoUploader

  #validates :first_name, :last_name, :email, presence: true
end
