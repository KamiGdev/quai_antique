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

  def search
    query = params[:query]
    @menus_only = false
    @menus = Menu.where("title ILIKE ?", "%#{query}%")
    @dishes = Dish.where("title ILIKE ?", "%#{query}%")
    render :index
  end

end
