class Reservation < ApplicationRecord
  has_one :slot, dependent: :destroy # Si la reservation est supprimée alors on supprime le slot
end
