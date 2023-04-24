class StaticPagesController < ApplicationController
  def home
    @bestoff_items = Dish.where(bestoff: true) + Menu.where(bestoff: true)
  end


end
