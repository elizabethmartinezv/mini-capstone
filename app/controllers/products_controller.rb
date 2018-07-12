class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all.order(:id)
    search_param = params[:name]
    if search_param
      @products = @products.where("name ILIKE ?", "%#{search_param}%")
    end

    render "index.json.jbuilder"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price], 
      description: params[:description],
      supplier_id: params[:supplier_id]
    )
    if @product.save
      render "show.json.jbuilder"
    else
      render json: {error: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    if @product.save
      render "show.json.jbuilder"
    else
      render json: {error: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Product successfully destroyed"}
  end
end
