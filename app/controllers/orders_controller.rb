class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders.order(:id)
    render "index.json.jbuilder"
  end

  def create
    carted_status = current_user.carted_products.where("status = ?", "carted")

    @product = Product.find_by(id: params[:product_id])

    subtotal = params[:quantity].to_i * @product.price
    tax = params[:quantity].to_i * @product.tax
    total = subtotal + tax

    @order = Order.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
    )

    if @order.save
      render "show.json.jbuilder"
    else
      render json: {error: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
