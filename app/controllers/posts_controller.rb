class PostsController < ApplicationController
  def index
    @theme = Theme.find(params[:theme_id])
    @nextTheme = Theme.order("RANDOM()").first
  end

  def create
  end
end
