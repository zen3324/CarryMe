class CommentsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @comment = @question.comments.create(comment_params)
    redirect_to @question
  end

  def comment_params
    params.require(:comment).permit(
      :body,
      :user_id
    )
  end
end
