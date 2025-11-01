class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    render template: "articles/index"
  end
end
