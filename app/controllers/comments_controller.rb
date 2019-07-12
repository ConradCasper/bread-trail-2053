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
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    if @comment.user == current_user
      @comment.destroy
        redirect_to post_path(@post)
    else flash[:info] = "You're not allowed to delete other user's comments."
    end
  end




end
