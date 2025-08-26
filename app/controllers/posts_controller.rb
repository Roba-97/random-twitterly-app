class PostsController < ApplicationController
  def index
    @theme = Theme.find(params[:theme_id])
    @nextTheme = Theme.order("RANDOM()").first
    @post = Post.build
    @posts = @theme.posts
  end

  def create
    @post = Theme.find(params[:theme_id]).posts.build(post_params)
    if @post.save
      flash[:success] = "投稿しました"
      redirect_to theme_posts_path(params[:theme_id])
    else
      flash[:danger] = @post.errors.full_messages.first
      redirect_to theme_posts_path(params[:theme_id])
    end
  end

  private
    def post_params
      params.require(:post).permit(:content, :nickname)
    end
end
