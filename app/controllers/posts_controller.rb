class PostsController < ApplicationController
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
      @posts = @theme.posts.reload # 投稿一覧を再取得
      @nextTheme = Theme.random_theme # 次のテーマも再取得
      render :index, status: :unprocessable_entity
    end
  end

  private
    def post_params
      params.require(:post).permit(:content, :nickname)
    end
end
