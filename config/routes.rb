Rails.application.routes.draw do
  get "/available_products" => "products#available_products_method"
  get "/laptop_product" => "products#laptop_product_method"
  get "/phone_product" => "products#phone_product_method"
  get "/headphones_product" => "products#headphones_product_method"
  get "/single_product" => "products#query_params_method"
  get "single_product/:product" => "products#segment_params_method"
end
