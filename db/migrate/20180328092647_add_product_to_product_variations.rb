class AddProductToProductVariations < ActiveRecord::Migration[5.1]
  def change
    add_reference :product_variations, :product, index: true
  end
end
