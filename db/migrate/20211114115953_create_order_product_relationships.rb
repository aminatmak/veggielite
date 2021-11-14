class CreateOrderProductRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :order_product_relationships do |t|
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
