class ProductsController < ApplicationController

  def all_products
    render json: Product.all
  end

  def lego
    render json: Product.find_by(name: "Lego")
  end

  def air_jordan
    render json: Product.find_by(name: "Air Jordan 1")
  end

  def one_product
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    render json: product.as_json
  end

  

end
