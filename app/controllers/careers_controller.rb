class CareersController < ApplicationController
  before_action :set_education_center, only: %i[new create]
  before_action :set_career, only: %i[show edit update destroy]

  def show
    authorize @career
    @career = Career.find(params[:id])
  end

  def new
    # @educationcenter = EducationCenter.find(params[:id])
    @educationcenter = EducationCenter.find(params[:education_center_id])
    @career = Career.new
    authorize @career
  end

  def edit
    authorize @career
    @career = Career.find(params[:id])
  end

  def create
    @career = Career.new(career_params)
    # @educationcenter.user = current_user

    authorize @educationcenter

    @career.education_center = @educationcenter
    if @career.save
      redirect_to education_center_path(params[:education_center_id])
    else
      render :new
    end
  end

  def update
    authorize @career
    if @career.update(career_params)
      redirect_to education_center_path(params[:education_center_id])
    else
      render :edit
    end
  end

  def destroy
    authorize @career

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

  # def education_center_params
  #   params.require(:education_center).permit(:name, :city, :description)
  # end
end
