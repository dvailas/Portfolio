class CategoryController < ApplicationController

  def show
    @categories = Category.where("parent_id >= ?", params[:id])
    @posts = Post.where("category_id IN (" + @categories.ids.join(",") + ")")
    @id = params[:id]
    @count = 0
  end

end
