class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

#this makes this it available at both controller and view layer
helper_method :current_user, :logged_in? 


def current_user
  #if user exits do not execute this code. So this will only execute once
  if session[:user_id]
    @current_user ||= User.find(session[:user_id]) rescue nil 
  else
    nil
  end

end

def logged_in?
  current_user.present?
end


def require_user
   if !logged_in?
    flash[:error] = "Must be logged in to do that." 
   redirect_to login_path
  end
end

end
