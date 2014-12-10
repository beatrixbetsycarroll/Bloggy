class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new
  end

  def create
    @article = Article.find(params[:article_id])
    redirect_to @article
  end


  private
  def comment_params
    params.require(:comment).permit(:text, :article_id)
  end

end
