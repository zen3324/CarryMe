class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    redirect_to @question
  end

  def answer_params
    params.require(:answer).permit(
      :body,
      :user_id
    )
  end
end
