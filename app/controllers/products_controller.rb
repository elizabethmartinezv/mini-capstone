class ProductsController < ApplicationController
  def available_products_method
    @product = Product.all
    render "available_products"
  end
end
