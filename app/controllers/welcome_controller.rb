class WelcomeController < ApplicationController

  def index
      @posts = Post.order(:date_created)
  end
end
