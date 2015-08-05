class PostsController < ApplicationController
  before_action :redirect_unless_logged_in
  before_action :grab_current_user

  def index
    @posts = Posts.find(params[:user_id])
  end

  def new
    @user = User.find(params[:user_id])
    @posts = Posts.new
  end

  def create
    @posts = Posts.new(posts_params)

    if @posts.save
      redirect_to user_posts_path
    else
      redirect_to user_posts_path
    end
  end

  def show
  end

  private

  def posts_params
    params.require(:posts).permit(:before_photo_id, :after_photo_id, :comment)
  end


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
