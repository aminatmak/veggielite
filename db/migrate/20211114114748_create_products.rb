class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :category
      t.float :quantity
      t.string :supplier_country
      t.float :calories
      t.float :macros
      t.string :shop_name
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
