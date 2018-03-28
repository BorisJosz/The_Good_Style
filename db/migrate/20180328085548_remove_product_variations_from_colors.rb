class RemoveProductVariationsFromColors < ActiveRecord::Migration[5.1]
  def change
    remove_column :colors, :product_variation_id
  end
end
