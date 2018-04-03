# frozen_string_literal: true

class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :logo
      t.string :image
      t.text :size_chart
      t.integer :shipping_costs
      t.string :url
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
