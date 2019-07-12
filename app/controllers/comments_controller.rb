class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(
      user_id: current_user.id,
      post_id: @post.id,
      content: params[:comment][:content]
    )
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
end
