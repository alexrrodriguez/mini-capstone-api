class OrdersController < ApplicationController
  
  def index
    if current_user
      order = Order.all
      render json: order.as_json
    else
      render json: {errors: order.errors.full_messages}
    end
  end

  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]
    )
      if order.save
        render json: order
      else
        render json: {errors: order.errors.full_messages}
      end
  end

  def show
    if current_user
      order = Order.find_by(id: params[:id])
      render json: order.as_json
    else
      render json: {errors: order.errors.full_messages}
    end
  end

end
