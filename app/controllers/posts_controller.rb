class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :update, :destroy ]
  def index
    @theme = Theme.find(params[:theme_id])
    @nextTheme = Theme.random_theme
    @post = Post.build
    @posts = @theme.posts
  end

  def create
    @theme = Theme.find(params[:theme_id])
    @post = @theme.posts.build(post_params)
    @post.user = current_user if user_signed_in?
    if @post.save
      flash[:success] = "投稿しました"
      redirect_to theme_posts_path(params[:theme_id])
    else
      flash[:danger] = @post.errors.full_messages.first
      @posts = @theme.posts.reload
      @nextTheme = Theme.random_theme
      render :index, status: :unprocessable_entity
    end
  end

  def edit
    @theme = Theme.find(params[:theme_id])
    @post = @theme.posts.find(params[:id])
  end

  def update
    @theme = Theme.find(params[:theme_id])
    @post = @theme.posts.find(params[:id])
    if @post.update(post_params)
      flash[:success] = "投稿を更新しました"
      redirect_to theme_posts_path(@theme)
    else
      flash.now[:danger] = @post.errors.full_messages.first
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    flash[:success] = "投稿を削除しました"
    redirect_to theme_posts_path(params[:theme_id])
  end

  private
    def post_params
      params.require(:post).permit(:content, :nickname)
    end
end
