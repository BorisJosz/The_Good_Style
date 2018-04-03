# frozen_string_literal: true

class CreateShoppingCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_carts do |t|
      t.boolean :status
      t.integer :total_commission
      t.integer :total_shop_revenue
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
