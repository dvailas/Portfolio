class CategoryController < ApplicationController

  def show
    @categories = Category.find(params[:id])
    @posts = Post.where("category_id = ?", params[:id])
    @id = params[:id]
  end

end
