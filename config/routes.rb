Rails.application.routes.draw do
  get "/tags" => "tags#index"
  get "/tags/:id" => "tags#show"
  create "/tags" => "tags#post"
  patch "/tags/:id" "tags#update"
  delete "/tags/:id" => "tags#delete"
end
