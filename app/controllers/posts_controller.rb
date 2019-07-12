class PostsController < ApplicationController
  before_action :authenticate!, except: [:index, :show]

def index
  @posts = Post.all
end

def show
  @post = Post.find(params[:id])
end

def new
  @post = Post.new
end

def create
    @post = current_user.posts.build(post_params)
  if @post.save
    redirect_to post_path(@post)
  else
    render :new
  end
end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
  @post.update(post_params)
  redirect_to post_path(@post)
end

private

def post_params
  params.require(:post).permit(:title, :location, :content, :date, :user_id, :category_id)
end


end
