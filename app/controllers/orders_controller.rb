class OrdersController < ApplicationController
  def create
    # 1) you fetch the products to be bought(cart)
    # 2) you calculate their sum value
    # 3) you create the order with state, user and amount
    # 4) you create the order_product_relationships
    products = session[:cart].map { |id| Product.find(id) }
    # products = Product.where(id: session[:cart])
    # @order.group(:product).count

    order = Order.new(
      state: 'pending',
      user: current_user,
      amount_cents: products.pluck(:price_cents).sum
    )

    products.each { |product| order.order_product_relationships.build(product: product) }
    order.save
    session = Stripe::Checkout::Session.create(
      line_items: products.map { |product| { name: product.name, quantity: 1, amount: product.price_cents, currency: 'aed' } },
      payment_method_types: ['card'],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    if order.persisted?
      session[:cart] = []
      order.update(checkout_session_id: session.id, state: 'completed')
      redirect_to order_path(order)
    end
  end

  def show
    @order = Order.find(params[:id])
    @basket = @order.products
                    .group_by { |product| product }
                    .transform_values{ |values| values.count }
  end
end
