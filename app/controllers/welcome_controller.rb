class WelcomeController < ApplicationController

  def index
      @category = Category.where("id = 1 or parent_id = 1")
      @posts = Post.order(:created_at).where("category_id NOT IN (" + @category.ids.join(",") + ")")
      @picturePosts = Post.where("category_id IN (" + @category.ids.join(",") + ")")
  end
end
