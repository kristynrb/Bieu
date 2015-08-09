class UsersController < ApplicationController
  before_action :grab_user, only: [:edit, :show, :update]
  before_action :grab_current_user

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login!(@user)
      redirect_to @user
    else
      flash[:message] = @user.errors.full_messages.to_sentence
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username, :profile_photo)
  end

  def grab_user
    @user = User.find(params[:id])
  end

  def grab_current_user
    @current_user = current_user
  end
end
