class ArticlesController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]
  before_filter :require_admin!, :except => [:show, :index]
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to article_path(@article)
    else
      render :action => :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to article_path(@article)
    else
      render :action => :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    
    redirect_to articles_path
  end

end
