class RemoveProductVariationsFromSizes < ActiveRecord::Migration[5.1]
  def change
    remove_column :sizes, :product_variation_id
  end
end
