class LikesController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.create(
      user_id: current_user.id,
      post_id: @post.id
    )
    redirect_to post_path(@post)
  end


end
