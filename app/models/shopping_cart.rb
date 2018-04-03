# frozen_string_literal: true

class ShoppingCart < ApplicationRecord
  belongs_to :user
  has_many :shopping_cart_items

  monetize :amount_cents

  def total
    tot = 0
    shopping_cart_items.each do |item|
      tot += item.calculate_total
    end
    tot
  end
end
