class QuizzesController < ApplicationController
  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new
    @quiz.user = current_user
    if @quiz.save
      redirect_to new_quiz_question_path(@quiz.id)
    else
      render :new
    end
  end

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    redirect_to root_path
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end
end
