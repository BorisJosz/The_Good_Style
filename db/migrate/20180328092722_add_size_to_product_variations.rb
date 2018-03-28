class AddSizeToProductVariations < ActiveRecord::Migration[5.1]
  def change
    add_reference :product_variations, :size, index: true
  end
end
