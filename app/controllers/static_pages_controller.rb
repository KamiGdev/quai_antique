class StaticPagesController < ApplicationController
  before_action :authenticate_user!
  def home
  end

  def contact
  end

  def about
  end

end
