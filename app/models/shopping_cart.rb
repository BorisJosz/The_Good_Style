# frozen_string_literal: true

class ShoppingCart < ApplicationRecord
  belongs_to :user
  has_many :shopping_cart_items
  after_create :shipping_costs
  monetize :amount_cents
  def shipping_costs
      self.amount_cents = 8
      self.save
  end
  def total
    tot = 0
    shopping_cart_items.each do |item|
      tot += item.calculate_total
    end
    (tot )
  end
end
