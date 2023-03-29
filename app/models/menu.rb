class Menu < ApplicationRecord
  has_many :dish
  has_one_attached :illustration
end
