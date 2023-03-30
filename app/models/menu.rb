class Menu < ApplicationRecord
  has_one_attached :illustration
  has_and_belongs_to_many :dishes
end
