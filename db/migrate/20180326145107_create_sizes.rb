# frozen_string_literal: true

class CreateSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :sizes do |t|
      t.string :size
      t.references :product_variation, foreign_key: true

      t.timestamps
    end
  end
end
