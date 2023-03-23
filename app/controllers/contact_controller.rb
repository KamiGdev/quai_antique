class ContactController < ApplicationController
  def index
    @contact = {}
  end

  def create
    flash[:notice] = 'hey'
    ContactMailer.contact(params).deliver_now
    redirect_to contact_path
  end
end
