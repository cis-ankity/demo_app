class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update]
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      respond_to do |format|
        format.html { render action: 'edit' }
      end
    end
  end

  def edit
  end

  def update
    if @article.update(permanent: true)
      respond_to do |format|
        format.js { render action: 'update' }
      end
    end
  end

private
  def article_params
    params.require(:article).permit(:title, :text, :permanent)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
