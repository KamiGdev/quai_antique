class StaticPagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]
  def home
  end

  def contact
  end

  def about
  end

end
