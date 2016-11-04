class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  @app_id = 5702988

  @secret_key = 'rYdQoE6SoOnztLEaIlYY'

  @base_link = 'https://api.vk.com/method/'
  
end
