class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
    redirect_to article_path(@article), :alert => 'comment must posted in article'
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(params[:comment])
    @comment.author = current_user
    if @comment.save
      redirect_to article_path(@article), :notice => 'comment created'
    else
      render :action => 'new'
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      redirect_to article_path(@comment.article), :notice => 'comment updated'
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Successfully destroyed comment."
    redirect_to @comment.article
  end
end
