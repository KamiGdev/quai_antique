class MenusController < ApplicationController
  def index
    @menus_only = params[:menu_only]

    if params[:category]
      @dishes = Dish.where category: params[:category]
    else
      @dishes = Dish.all
    end
    @menus = Menu.all
  end


  def show
    @menu = Menu.find params[:id]
  end
end
