class ShoppingCartItem < ApplicationRecord
  belongs_to :shopping_cart
  belongs_to :product_variation



  def calculate_total
  return   self.quantity * self.product_variation.product.price

  end
end
