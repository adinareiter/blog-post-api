Rails.application.routes.draw do
  #Tags Routes
  get "/tags" => "tags#index"
  get "/tags/:id" => "tags#show"
  post "/tags" => "tags#create"
  patch "/tags/:id" => "tags#update"
  delete "/tags/:id" => "tags#delete"
  #Posts Routes
  get "/posts/:id" => "posts#show"
  get "/posts" => "posts#index"
  post "/posts" => "posts#create"
  patch "/posts/:id" => "posts#update"
  delete "/posts/:id" => "posts#destroy"
end
