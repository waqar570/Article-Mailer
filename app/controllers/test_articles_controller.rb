class TestArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new 
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      TestArticleMailer.test_mail_catcher(@article).deliver_now
      redirect_to(@article, :notice => 'Article is created')
  end

  private

  def article_params
    params.require(:author).permit(:title)
  end
end
