class Booking < ApplicationRecord
  belongs_to :pet
  belongs_to :user

  validates :booking_date, presence: true
  validates :booking_location, presence: true

end
