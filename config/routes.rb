Rails.application.routes.draw do
<<<<<<< HEAD
  get "/tags" => "tags#index"
  get "/tags/:id" => "tags#show"
  create "/tags" => "tags#post"
  patch "/tags/:id" "tags#update"
  delete "/tags/:id" => "tags#delete"
=======
  #Posts Routes
  get "/posts/:id" => "posts#show"
  get "/posts" => "posts#index"
  post "/posts" => "posts#create"
  patch "/posts/:id" => "posts#update"
  delete "/posts/:id" => "posts#destroy"
>>>>>>> cf39ef768ca30fc0919f32a9ec99bb25875bbec1
end
