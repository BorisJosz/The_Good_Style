# frozen_string_literal: true

class RemoveProductFromBrands < ActiveRecord::Migration[5.1]
  def change
    remove_column :brands, :product_id
  end
end
