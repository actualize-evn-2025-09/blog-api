Rails.application.routes.draw do
  get "/articles" => "articles#index"
  get "/articles/:id" => "articles#show"
end
