class IndexController < ApplicationController
  def index
    @theme = Theme.order("RANDOM()").first
  end
end
