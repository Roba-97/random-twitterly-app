class StaticPagesController < ApplicationController
  before_action :redirect_theme_if_logged_in
  def home
    @theme = Theme.random_theme
  end

  private
    def redirect_theme_if_logged_in
      redirect_to theme_posts_path(Theme.random_theme) if user_signed_in?
    end
end
