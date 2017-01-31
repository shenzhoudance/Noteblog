class WelcomeController < ApplicationController
  def index
    @posts = Post.recent.paginate(:page => params[:page], :per_page => 5)
  end
end
