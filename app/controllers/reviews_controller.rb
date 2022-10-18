class ReviewsController < ApplicationController
  before_action :find_education_center
  def new
    # @education_center = EducationCenter.find(params[:education_center_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # @review.education_center = @education_center -- Need to confirm this piece of code
    @review.education_center_id = @education_center_id
    @review.user_id = current_user.id
    if @review.save
      # redirect_to education_center_path(@education_center) -- Need to confirm if we should redirect to this path instead of root
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def find_education_center
    @education_center = EducationCenter.find(params[:education_center_id])
  end

  def review_params
    params.require(:review).permit(:statement, :rating)
  end
end
