class CartedProductsController < ApplicationController
  def index
    @carted_products = current_user.carted_products
    render "index.json.jbuilder"
  end

  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      user_id: current_user.id
    )
    @carted_product.save
    render "show.json.jbuilder"
  end
end
