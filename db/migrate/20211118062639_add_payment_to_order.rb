class AddPaymentToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :state, :string
    add_column :orders, :product_sku, :string
    add_monetize :orders, currency: { present: false }
    add_column :orders, :checkout_session_id, :string
  end
end
