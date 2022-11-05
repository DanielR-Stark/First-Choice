class QuestionsController < ApplicationController
  before_action :set_quiz, only: %i[new create]
  before_action :set_question, only: %i[show edit update destroy]

  def new
    @quiz = Quiz.find(params[:quiz_id])
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.quiz = @quiz
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @question.update(question_params)
      redirect_to quiz_path(params[:quiz_id])
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to quiz_path(@question.quiz)
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end

  def question_params
    params.require(:question).permit(:respuesta)
  end

  def set_question
    @question = Question.find(params[:id])
  end
end
