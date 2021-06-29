class ProductsController < ApplicationController


  def index
    if current_user
    products = Product.all
    render json: products
    else
      render json: []
    end
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
      itemcount: params["itemcount"],
      supplier_id: params["supplier_id"]
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
    product.supplier_id = params["supplier_id"] || product.supplier_id

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
