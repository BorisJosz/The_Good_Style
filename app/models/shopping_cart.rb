class ShoppingCart < ApplicationRecord
  belongs_to :user
  has_many :shopping_cart_items

  monetize :amount_cents

  def total
    tot = 0
      self.shopping_cart_items.each do |item|
        tot += item.calculate_total
      end
      return tot
  end


end
