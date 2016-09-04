class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answer = @question.answers.build
    @answers = @question.answers
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user

    if @question.save
      redirect_to @question,
        notice: t("question_was_successfully_created")
    else
      render :new
    end
  end

  def question_params
    params.require(:question).permit(
      :title,
      :body,
      :user_id
    )
  end
end
