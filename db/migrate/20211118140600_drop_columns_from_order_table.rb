class DropColumnsFromOrderTable < ActiveRecord::Migration[6.1]
  def change
    change_table :orders, bulk: true do |t|
      t.remove :shop_id
      t.remove :product_id
      t.remove :product_sku
    end
  end
end
