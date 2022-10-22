class EducationCentersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @educationcenters = EducationCenter.all
  end

  def show
    @educationcenter = EducationCenter.find(params[:id])
  end

  def new
    @educationcenter = EducationCenter.new
  end

  def edit
  end

  def create
    @educationcenter = EducationCenter.new(education_center_params)
    # @educationcenter.user = current_user
    if @educationcenter.save
      redirect_to education_center_path(@educationcenter)
    else
      render :new
    end
  end

  def update
    if @educationcenter.update(education_center_params)
      redirect_to education_center_path(@educationcenter)
    else
      render :edit
    end
  end

  def destroy
    @educationcenter = EducationCenter.find(params[:id])
    @educationcenter.destroy
    redirect_to education_centers_path
  end

  private

  def set_education_center
    @educationcenter = EducationCenter.find(params[:id])
  end

  def education_center_params
    params.require(:education_center).permit(:name, :city, :description)
  end
end
