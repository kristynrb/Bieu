class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:user][:email])

    if @user.authenticate(params[:user][:password])
      session[:current_user_id] = @user.id
      redirect_to @user
    else
      redirect_to new_session_path
    end
  end

  def destroy
  end
end
