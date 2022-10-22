class CareersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @careers = Career.all
  end

  def show
    @career = Career.find(params[:id])
  end

  def new
    @career = Career.new
  end

  def edit
  end

  def create
    @career = Career.new(career_params)
    # @educationcenter.user = current_user
    if @career.save
      redirect_to career_path(@career)
    else
      render :new
    end
  end

  def update
    if @career.update(career_params)
      redirect_to career_path(@career)
    else
      render :edit
    end
  end

  def destroy
    @career = Career.find(params[:id])
    @career.destroy
    redirect_to career_path
  end

  private

  def set_career
    @career = Career.find(params[:id])
  end

  def career_params
    params.require(:career).permit(:name, :description, :duration, :modality, :category)
  end
end
