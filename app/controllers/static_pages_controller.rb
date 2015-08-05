class StaticPagesController < ApplicationController
  def home
    @posts = Posts.all
    posts = Posts.all
  end
end
