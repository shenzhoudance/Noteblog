class WelcomeController < ApplicationController
  def index
    @posts = Post.recent.paginate(:page => params[:page], :per_page => 5)
    @posts_import = Post.where(category_name: "import").recent
    @posts_export = Post.where(category_name: "export").recent

  end
end
