# frozen_string_literal: true

class CreateProductVariations < ActiveRecord::Migration[5.1]
  def change
    create_table :product_variations, &:timestamps
  end
end
