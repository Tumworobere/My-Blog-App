class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts_list = @user.recent_posts
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end
end