class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    render template: "articles/index"
  end

  def show
    @article = Article.find(params[:id])

    render template: "articles/show"
  end

  def create
    @article = Article.create(
      title: params[:title],
      content: params[:content]
    )

    render template: "articles/show"
  end

  def update
    @article = Article.find(params[:id])

    @article.update(
      title: params[:title] || @article.title,
      content: params[:content] || @article.content
    )

    render template: "articles/show"
  end

  def destroy
    @article = Article.find(params[:id])

    @article.destroy

    render json: { message: "Article deleted..." }
  end
end
