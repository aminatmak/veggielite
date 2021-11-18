class OrdersController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    order = Order.create!(
      product: product,
      product_sku: product.sku,
      amount: product.price,
      state: 'pending',
      user: current_user,
      shop: product.shop
    )

    session = Stripe::Checkout::Session.create(
      line_items: [{
        name: 'Product',
        amount: 1000,
        currency: 'eur',
        quantity: 1
      }],
      payment_method_types: ['card'],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to order_path(order)
  end

  def show
    @order = Order.find(params[:id])
    # @order = current_user.orders.find(params[:id])
  end
end
