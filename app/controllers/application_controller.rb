class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD
=======

  private
  
  def current_user
    @current_user ||= User.find_by(id: session[:current_user_id])
  end
>>>>>>> d32a3bd85f2fe74fc25b17260fb76eea04ada3d8
end
