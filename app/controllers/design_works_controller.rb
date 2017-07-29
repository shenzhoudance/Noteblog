class DesignWorksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :design_work_find_params_id, only: [:show, :edit, :update, :destroy]

  def index
    # @design_works = Design_work.all
  end

  def new
    @design_work = Design_work.new
  end

  def create
    @design_work = Design_work.new(design_work_params)
    if @design_work.save
      redirect_to @design_work
    else
      render 'new'
    end
  end

  def show
  end

  def edite
  end

  def update
    if @design_work.update(design_work_params)
      redirect_to design_works_path
    else
      render :edit
    end
  end

  def destroy
    @design_work.destroy
    redirect_to design_works_path
  end

  private

  def design_work_find_params_id
    @design_work = Design_work.find(params[:id])
  end

  def design_work_params
    params.require(:design_work).permit(:title, :description)
  end
end
