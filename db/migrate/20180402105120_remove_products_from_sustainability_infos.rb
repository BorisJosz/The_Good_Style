class RemoveProductsFromSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    remove_column :sustainability_infos, :products_id
  end
end
