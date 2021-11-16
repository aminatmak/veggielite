class RemoveShopNameFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :shop_name, :string
  end
end
