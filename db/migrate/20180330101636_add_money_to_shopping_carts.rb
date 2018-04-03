# frozen_string_literal: true

class AddMoneyToShoppingCarts < ActiveRecord::Migration[5.1]
  def change
    add_monetize :shopping_carts, :amount, currency: { present: false }
    add_column :shopping_carts, :payment, :jsonb
  end
end
