class TestArticlesController < ApplicationController
  def index
    @articles = TestArticle.all
  end

  def new
    @article = TestArticle.new 
  end

  def show
    @article = TestArticle.find(params[:id])
  end

  def create
    @article = TestArticle.new(test_article_params)
    if @article.save
      TestArticleMailer.test_mail_catcher(@article).deliver_now
      redirect_to(@article, :notice => 'Article is created')
    end
  end

  private

  def testarticle_params
    params.require(:test_article).permit(:title)
  end
end
