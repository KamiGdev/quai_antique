class Reservation < ApplicationRecord
  has_one :slot, dependent: :destroy
end
