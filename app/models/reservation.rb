class Reservation < ApplicationRecord
  has_one :slot, dependent: :destroy # If reservation is destroyed then we also destroy the slot

end
