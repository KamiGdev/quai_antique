class Reservation < ApplicationRecord
  validates :allergy, presence: true
end
