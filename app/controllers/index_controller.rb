class IndexController < ApplicationController
  def index
    @theme = Theme.first
  end
end
