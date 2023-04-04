class StaticPagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]
  def home
    @bestoff_items = Dish.where(bestoff: true) + Menu.where(bestoff: true)
  end

  def about
  end
end
