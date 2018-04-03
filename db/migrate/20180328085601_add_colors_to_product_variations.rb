# frozen_string_literal: true

class AddColorsToProductVariations < ActiveRecord::Migration[5.1]
  def change
    add_reference :product_variations, :color, index: true
  end
end
