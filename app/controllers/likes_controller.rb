class LikesController < ApplicationController
  before_action :redirect_unless_logged_in

  private

  def redirect_unless_logged_in
    if session[:current_user_id]
      @current_user = User.find(session[:current_user_id])
    else
      redirect_to new_session_path
    end
  end
end
