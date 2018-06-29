Rails.application.routes.draw do
  get "/products" => "products#index"
  get "products/:id" => "products#show"
end
