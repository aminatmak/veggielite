class OrdersController < ApplicationController
  def create
    @order = Order.new
    # Assigning a user to a specific booking
    @order.user = current_user
    # Assigning a tour to a specific order
    @order.tour = Product.find(params[:tour_id])

    if @order.save
      redirect_to my_orders_path, notice: 'New order created!'
    else
      render :new
    end
  end
end
