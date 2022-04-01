class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.post_id = params[:post_id]

    @comment.update_comments_counter
    if @comment.save
      redirect_to user_post_path(current_user.id, Post.find(params[:post_id]))
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
