class PostsController < ApplicationController
  before_action :current_user, only: [:create]

  def index
    @user = User.find(params[:user_id])
    @posts_list = @user.posts.includes(:comments)
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    new_p = current_user.posts.new(post_params)
    new_p.likes_counter = 0
    new_p.comments_counter = 0
    respond_to do |format|
      format.html do
        if new_p.save
          flash[:success] = 'Post created successfully'
          redirect_to "/users/#{current_user.id}/posts/"
        else
          render :new
          flash.now[:error] = 'Error: Post could not be saved'
        end
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:Title, :Text)
  end
end
