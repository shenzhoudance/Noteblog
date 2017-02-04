class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @category_id = Category.find_by(name: params[:category]).id
    @posts = Post.where(category_id: @category_id).recent

  end

  def import
    @category_id = 1
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: "hellz yeah, Your article was successfully saved!"
    else
      render 'new', notice: "Oh no, I was unable to save your post."
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "hellz yeah, Your article was successfully updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
