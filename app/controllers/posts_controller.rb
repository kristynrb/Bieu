class PostsController < ApplicationController
  before_action :redirect_unless_logged_in
  before_action :grab_current_user

  def index
    @posts = Posts.find(params[:user_id])
    @user = User.find(params[:user_id])
    @allposts = Posts.all
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
    @posts = Posts.all
  end

  def edit
    @posts = Posts.find(params[:id])
    @allposts = Posts.all
  end

  def update
    @posts = Posts.find(params[:id])
    @posts.update(posts_params)
    @posts.save
    render 'posts/index'
  end

  def destroy
    @post = Posts.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "Your post has been deleted."
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
