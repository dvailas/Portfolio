class PostController < ApplicationController

  def index
    @posts = Post.order(:date_created)
  end

  def show
    @posts = Post.find(params[:id])
  end
end
