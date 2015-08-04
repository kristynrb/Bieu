class PhotosController < ApplicationController
  before_action :redirect_unless_logged_in

  def index
    redirect_to new_user_photo_path
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
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
end
