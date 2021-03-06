class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def logged_in?
    unless session[:user_id] == nil
      return true 
    else
      return false
    end
  end
  helper_method :logged_in?

end
