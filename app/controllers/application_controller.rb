class ApplicationController < ActionController::Base

  def not_found
    render 'errors/404'
  end

  def error
    render image: '500.webp'
  end

  def about
    render 'layouts/about'
  end

  def products_list
    @products=Product.all
    render 'layouts/products'
  end

  def product_details
    render 'layouts/product'
  end

end
