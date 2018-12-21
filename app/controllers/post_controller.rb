class PostController < ApplicationController

  def index
    @posts = Post.order(:created_at)
  end

  def show
    @posts = Post.find(params[:id])
  end
end
