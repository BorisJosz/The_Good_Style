class AddCategoryToProductCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :product_categories, :category, :string
  end
end
