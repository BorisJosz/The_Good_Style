class RemoveMaterialInfoFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :material_info
  end
end
