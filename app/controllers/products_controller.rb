class ProductsController < ApplicationController
  def available_products_method
    @products = Product.all
    render "available_products.json.jbuilder"
  end

  def laptop_product_method
    @product = Product.first
    render "product_renders.json.jbuilder"
  end

  def phone_product_method
    @product = Product.second
    render "product_renders.json.jbuilder"
  end

  def headphones_product_method
    @product = Product.third
    render "product_renders.json.jbuilder"
  end

  def params_method
    @product = Product.find_by(id: params["id"])
    render "product_renders.json.jbuilder"
  end
end
