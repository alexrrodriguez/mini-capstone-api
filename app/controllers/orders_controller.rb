class OrdersController < ApplicationController
  before_action :authenticate_user
  
  def index
      orders = current_user.orders
      render json: orders
  end

  def create
    users_carted_products = current_user.cartedProducts.where("status = ?", "carted")
    subtotal = 0
    users_carted_products.each do |carted_product|
      subtotal = carted_product.product.price * 
    order = Order.new(
      users_carted_products[0].product.price * users_carted_products[0].quantity
    )
      if order.save
        render json: order
      else
        render json: {errors: order.errors.full_messages}
      end
  end

  def show
      order = current_user.orders.find_by(id: params[:id])
      render json: order
  end

end
