class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: user_params[:username])

    if @user.authenticate(user_params[:password])
      login!(@user)
      redirect_to @user
    else
      flash[:message] = "Username or Password Error"
      redirect_to new_session_path
    end
  end

  def destroy
    logout!
    redirect_to root_path
  end

  private
  def user_params
    params.requre(:user).permit(:username, :password)
  end
end
