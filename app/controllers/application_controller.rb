class ApplicationController < ActionController::Base
<<<<<<< Updated upstream
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  add_flash_types :notice, :alert

  # rescue_from StandardError, with: :render_500
  # rescue_from ActiveRecord::RecordNotFound, with: :render_404

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, alert: exception.message
  end

  def store_location
    session[:stored_location] = request.path
  end

  def stored_location
    session[:stored_location] || root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:email, :password)
    end
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:email, :password,
                         :password_confirmation)
    end
    devise_parameter_sanitizer.permit(:edit) do |user_params|
      user_params.permit(:email, :password,
                         :password_confirmation, :current_password)
    end
  end

  def render_404
    render file: "#{Rails.root}/public/404.html", status: :not_found
  end

  def render_500
    render file: "#{Rails.root}/public/500.html", status: :internal_server_error
=======
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
>>>>>>> Stashed changes
  end
end
