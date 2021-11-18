class AddCurrencyPriceToProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :price
    add_monetize :products, :price, currency: { present: false }
  end
end
