class ChangeColumnToOrders < ActiveRecord::Migration[6.1]
  def change
    remove_monetize :orders, currency: { present: false }
    add_monetize :orders, :amount, currency: { present: false }
  end
end
