class PostsController < ApplicationController
  before_action :current_user, only: [:create]
  def index
    @user = User.find(params[:user_id])
    @posts_list = @user.recent_3_posts
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  private

  def create
    new_post = current_user.posts.new(post_params)
    new_post.likes_counter = 0
    new_post.comments_counter = 0
    new_post.update_posts_counter
    respond_to do |format|
      format.html do
        if new_post.save
          redirect_to "/users/#{new_post.user.id}/posts/", notice: 'Success!'
        else
          render :new, alert: 'Error!'
        end
      end
    end
  end
  def post_params
    params.require(:data).permit(:title, :text)
  end
end
