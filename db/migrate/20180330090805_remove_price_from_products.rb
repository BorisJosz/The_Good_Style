# frozen_string_literal: true

class RemovePriceFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :price
  end
end
