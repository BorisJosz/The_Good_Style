# frozen_string_literal: true

class CreateShoppingCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_cart_items do |t|
      t.integer :quantity
      t.boolean :shipping_status
      t.references :shopping_cart, foreign_key: true
      t.references :product_variation, foreign_key: true

      t.timestamps
    end
  end
end
