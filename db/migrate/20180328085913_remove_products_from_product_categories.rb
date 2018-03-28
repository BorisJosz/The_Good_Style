class RemoveProductsFromProductCategories < ActiveRecord::Migration[5.1]
  def change
    remove_column :product_categories, :product_id
  end
end
