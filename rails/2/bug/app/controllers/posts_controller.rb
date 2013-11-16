class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    flash[:notice] = "Created post."
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    flash[:notice] = "Updated post."
    redirect_to root_path
  end

  private

    def post_params
      params.require(:post).permit!
    end
end
