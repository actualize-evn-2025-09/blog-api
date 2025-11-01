Rails.application.routes.draw do
  get "/articles" => "articles#index"
  get "/articles/:id" => "articles#show"
  post "/articles" => "articles#create"
  put "/articles/:id" => "articles#update"
  delete "/articles/:id" => "articles#destroy"
end
