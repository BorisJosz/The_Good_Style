# frozen_string_literal: true

class AddProductCategoriesToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :product_category, index: true
  end
end
