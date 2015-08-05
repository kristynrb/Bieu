class PostsController < ApplicationController
  before_action :redirect_unless_logged_in
  before_action :grab_current_user

  def index
    redirect_to new_user_photo_path
  end

  def new
    @user = User.find(params[:user_id])
    @posts = Posts.new
  end

  def create
    @posts = Posts.new(posts_params)

    if @post.save
      redirect_to @user
    else
      redirect_to new_user_path
    end
  end

  def show
  end

  private

  def redirect_unless_logged_in
    if session[:current_user_id]
      @current_user = current_user
    else
      redirect_to new_session_path unless @current_user
    end
  end

  def grab_current_user
    @current_user = current_user
  end
end
