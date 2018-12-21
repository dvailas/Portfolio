class CategoryController < ApplicationController

  def index
    @categories = Category.order(:name)
  end

  def show
    @categories = Category.find(params[:id])
  end

end
