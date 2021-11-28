class ApplicationController < ActionController::Base
  # Additional params for a user
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  # Instead of here - use this for every controller that you don't want to be accesed by the non-user
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    stored_location_for(resource) ||
      if resource.is_a?(User)
        "/recipes"
      else
        super
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :restaurant_id, :email, :password)}
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :restaurant_id, :email, :password, :current_password)}
  end

end
