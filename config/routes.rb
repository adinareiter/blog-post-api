Rails.application.routes.draw do
  #Posts Routes
  get "/posts/:id" => "posts#show"
  get "/posts" => "posts#index"
  post "/posts" => "posts#create"
  patch "/posts/:id" => "posts#update"
  delete "/posts/:id" => "posts#destroy"
end
