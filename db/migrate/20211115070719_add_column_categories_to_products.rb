class AddColumnCategoriesToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :categories, :string, array: true, default: []
  end
end
