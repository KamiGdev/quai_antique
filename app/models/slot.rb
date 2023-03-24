class Slot < ApplicationRecord
  belongs_to :reservation
  validates :date, :time, presence: true
end
