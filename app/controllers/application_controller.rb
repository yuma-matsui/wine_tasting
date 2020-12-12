class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :authenticate_user!, except: [:home, :show]
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_permitted_update, if: :devise_controller?

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  def configure_permitted_update
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

end
