class ProductsController < ApplicationController
  def available_products_method
    @products = Product.all
    render "available_products.json.jbuilder"
  end

  def laptop_product_method
    @product = Product.first
    render "laptop_product.json.jbuilder"
  end

  def phone_product_method
    @product = Product.first
    render "laptop_product.json.jbuilder"
  end
end
