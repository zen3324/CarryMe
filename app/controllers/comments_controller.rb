class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to @article
  end

  def comment_params
    params.require(:comment).permit(
      :body,
      :user_id
    )
  end
end
