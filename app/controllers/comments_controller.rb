class CommentsController < ApplicationController

  def create
    @posts = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:content))
    redirect_to post_path(@post)
  end
end
