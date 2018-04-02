class AddMaterialToSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :sustainability_infos, :material, :text
  end
end
