class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.includes(:comments => :user).find(params[:id])
  end
end
