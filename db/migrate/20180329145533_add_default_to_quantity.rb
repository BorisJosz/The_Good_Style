class AddDefaultToQuantity < ActiveRecord::Migration[5.1]
  def change
    change_column :shopping_cart_items, :quantity, :integer, default: 1
  end
end
