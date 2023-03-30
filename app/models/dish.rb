class Dish < ApplicationRecord
  has_and_belongs_to_many :menus
  has_one_attached :illustration
end
