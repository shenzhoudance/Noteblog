class WelcomeController < ApplicationController
  def index
    @posts = Post.recent.paginate(:page => params[:page], :per_page => 5)
    @posts_import = Post.where(category_id: "1").recent
    @posts_export = Post.where(category_id: "2").recent

  end
end
