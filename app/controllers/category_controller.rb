class CategoryController < ApplicationController

  def show
    @categoryClicked =  Category.find(params[:id])
    if @categoryClicked.parent_id == nil
      @categories = Category.where("parent_id = ?", params[:id])
      @posts = Post.where("category_id IN (" + @categories.ids.join(",") + ")")
      @count = 0
    else
      @categories = @categoryClicked
      @posts = Post.where("category_id = " + @categories.id.to_s())
      @count = -1
    end
    @id = params[:id]

  end

end
