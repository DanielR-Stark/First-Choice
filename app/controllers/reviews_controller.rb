class ReviewsController < ApplicationController
  before_action :set_education_center
  def new
    @education_center = EducationCenter.find(params[:education_center_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.education_center = @education_center
    @review.save
    redirect_to education_center_path(@education_center)
  end

  private

  def set_education_center
    @education_center = EducationCenter.find(params[:education_center_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
