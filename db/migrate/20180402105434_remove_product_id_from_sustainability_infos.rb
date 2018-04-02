class RemoveProductIdFromSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    remove_column :sustainability_infos, :product_id_id
  end
end
