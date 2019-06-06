class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def configure_permitted_parameters
    added_columns = [:username, :age, :bdate]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_columns)
    devise_parameter_sanitizer.permit(:account_update, keys: added_columns)
  end
end
