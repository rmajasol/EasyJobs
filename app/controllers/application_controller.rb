class ApplicationController < ActionController::Base
  protect_from_forgery

  # hace que los métodos 'current_user_session' y 'current_user' sean
  # accesibles desde las vistas
  helper_method :current_user_session, :current_user

  private

  def current_user_session
  	return @current_user_session if defined?(@current_user_session)
  	@current_user_session = UserSession.find
  end

  def current_user
  	return @current_user if defined?(@current_user)
  	@current_user = current_user_session && current_user_session.user
  end
end
