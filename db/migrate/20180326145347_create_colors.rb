# frozen_string_literal: true

class CreateColors < ActiveRecord::Migration[5.1]
  def change
    create_table :colors do |t|
      t.string :color
      t.references :product_variation, foreign_key: true

      t.timestamps
    end
  end
end
