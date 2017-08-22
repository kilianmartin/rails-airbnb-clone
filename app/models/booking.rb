class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :kitchen
  has_one :review
end
