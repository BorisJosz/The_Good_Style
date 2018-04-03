# frozen_string_literal: true

class ShoppingCartItem < ApplicationRecord
  belongs_to :shopping_cart
  belongs_to :product_variation

  def calculate_total
    quantity * product_variation.product.price
  end
end
