class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    new_like = current_user.likes.new(
      user_id: current_user.id,
      post_id: @post.id
    )
    if new_like.save
      flash[:success] = 'Like saved successfully'
      redirect_to "/users/#{@post.user_id}/posts/#{@post.id}"
    else
      render :new
      flash.now[:error] = 'Error: Like could not be saved'
    end
  end
end
