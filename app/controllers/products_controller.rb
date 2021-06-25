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
    render json: product
  end

  def index
    products = Product.all
    render json: products
  end

  def show
    product_id = params["id"]
    product = Product.find(product_id)
    render json: product
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
      itemcount: params["itemcount"]
    )
    if product.save
      render json: product
    else
      render json: {error: product.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.itemcount = params["itemcount"] || product.itemcount

    if product.save
      render json: product
    else
      render json: {error: product.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def destroy
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: {message: "Product successfully deleted."}

  end
  
end
