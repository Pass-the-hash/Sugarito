class ProductsController < ApplicationController

  def index
    @products=Product.all
  end

  def new
    @product = Product.new
  end

  def create
    puts params
    @product = Product.new params.permit :name, :category, :description, :price, :image

    if @product.save
      redirect_to "/products"
    else
      render 'errors/422', status: :unprocessable_entity
    end
  end

end
