# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :image
      t.text :material_info
      t.text :location_info
      t.text :people_info
      t.text :distance_info

      t.timestamps
    end
  end
end
