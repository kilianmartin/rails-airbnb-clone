class Review < ApplicationRecord
  belongs_to :id_booking
  validates :rating, presence: true, inclusion: { in: [1..5] }
end
