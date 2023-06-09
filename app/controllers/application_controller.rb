class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale
  def set_locale
    I18n.locale = :fr

  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :allergy, :people_number])
      devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :allergy, :people_number])
    end
end
