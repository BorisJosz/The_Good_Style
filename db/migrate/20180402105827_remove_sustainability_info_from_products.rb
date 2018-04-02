class RemoveSustainabilityInfoFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :sustainability_info_id
  end
end
