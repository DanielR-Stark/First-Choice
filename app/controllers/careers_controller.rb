class CareersController < ApplicationController
  before_action :set_education_center, only: %i[new create]
  before_action :set_career, only: %i[show edit update destroy]

  def show
    @career = Career.find(params[:id])
  end

  def new
    @educationcenter = EducationCenter.find(params[:education_center_id])
    @career = Career.new
  end

  def edit
    @career = Career.find(params[:id])
  end

  def create
    @career = Career.new(career_params)
    @career.education_center = @educationcenter
    if @career.save
      redirect_to education_center_path(params[:education_center_id])
    else
      render :new
    end
  end

  def update
    if @career.update(career_params)
      redirect_to education_center_path(params[:education_center_id])
    else
      render :edit
    end
  end

  def destroy
    @career = Career.find(params[:id])
    @career.destroy
    redirect_to education_center_path(@career.education_center)
  end

  private

  def set_education_center
    @educationcenter = EducationCenter.find(params[:education_center_id])
  end

  def set_career
    @career = Career.find(params[:id])
  end

  def career_params
    params.require(:career).permit(:name, :description, :duration, :modality, :category)
  end
end
