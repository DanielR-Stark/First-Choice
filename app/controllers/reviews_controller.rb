class ReviewsController < ApplicationController
  before_action :set_education_center
  def new
    @review = Review.new
  end

  def create
  end

  private

  def set_education_center
    @education_center = EducationCenter.find(params[:education_center_id])
  end
end
