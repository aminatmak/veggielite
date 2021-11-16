class ChangeMacrosToJson < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :macros
    add_column :products, :macros, :jsonb
  end
end
