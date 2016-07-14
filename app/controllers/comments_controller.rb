# Comment controller for creating comments
class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to article_path(@article)
    else
      render 'new', error: 'Failed to save.'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
