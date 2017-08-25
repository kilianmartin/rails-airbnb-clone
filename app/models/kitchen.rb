class Kitchen < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_attachment :photo
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
