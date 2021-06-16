class ProductsController < ApplicationController

  def all_products
    render json: Product.all
  end

  def lego
    render json: Product.first
  end

  def air_jordan
    render json: Product.second
  end

end
