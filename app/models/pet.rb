class Pet < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :pet_details, presence: true
  validates :pet_name, presence: true
  validates :picture_url, presence: true
  # has_many :users, through: :bookings
end
