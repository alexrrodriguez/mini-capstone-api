class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
      if params[:category]
        category = Category.find_by(name: params[:category])
        products = category.products
      else
        products = Product.all
      end
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
