class CreateProductVariations < ActiveRecord::Migration[5.1]
  def change
    create_table :product_variations do |t|

      t.timestamps
    end
  end
end
