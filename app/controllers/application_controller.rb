class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Added for Devise controller. I added first name, last name and profile name to the model.
  # To write those fields to the DB, the code beow is added by Utku
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up,) { |u| u.permit(:first_name, :last_name, :profile_name, :email, :password) }
	end

end
