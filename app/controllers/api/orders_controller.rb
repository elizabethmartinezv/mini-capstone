class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders.order(:id)
    render "index.json.jbuilder"
  end

  def create
    carted_products = current_user.carted_products.where("status = ?", "carted")

    subtotal = 0
    tax = 0
    total = 0

    carted_products.each do |carted_product|
      subtotal = carted_product.quantity * carted_product.product.price
      tax = carted_product.quantity * carted_product.product.tax
      total = subtotal + tax
      carted_product.status = "purchased"
      carted_product.order_id = carted_product.order.id
    end

    @order = Order.new(
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