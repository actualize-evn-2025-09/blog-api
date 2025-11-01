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
end
