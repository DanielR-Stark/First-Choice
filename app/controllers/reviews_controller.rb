class ReviewsController < ApplicationController
  before_action :set_education_center, only: %i[new create]
  before_action :set_review, only: %i[show edit update destroy]

  def new
    @educationcenter = EducationCenter.find(params[:education_center_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.education_center = @educationcenter
    @review.user = current_user
    if @review.save
      redirect_to education_center_path(params[:education_center_id])
    else
      render :new
    end
  end

  def update
    if @review.update(review_params)
      redirect_to education_center_path(params[:education_center_id])
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to education_center_path(@review.education_center)
  end

  private

  def set_education_center
    @educationcenter = EducationCenter.find(params[:education_center_id])
  end

  def review_params
    params.require(:review).permit(:statement, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
