Rails.application.routes.draw do
  get "/available_products" => "products#available_products_method"
  get "/laptop_product" => "products#laptop_product_method"
  get "/phone_product" => "products#phone_product_method"
  get "/headphones_product" => "products#headphones_product_method"
end
