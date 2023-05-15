class Reservation < ApplicationRecord
  has_one :slot, dependent: :destroy # If reservation is destroyed then we also destroy the slot
  validates :slot, presence: true

  validates :email, presence: true, format: URI::MailTo::EMAIL_REGEXP

end
