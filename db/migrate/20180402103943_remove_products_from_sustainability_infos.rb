class RemoveProductsFromSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :sustainability_infos, :products
  end
end
