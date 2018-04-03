# frozen_string_literal: true

class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.integer :number
      t.references :product_variation, foreign_key: true

      t.timestamps
    end
  end
end
