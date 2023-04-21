class ContactController < ApplicationController
  def index
    @contact = {}
  end

  def create
    ContactMailer.contact(params).deliver_now
    flash[:notice] = 'Email envoyé !'
    redirect_to contact_path
  end
end
