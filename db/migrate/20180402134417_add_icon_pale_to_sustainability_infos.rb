class AddIconPaleToSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :sustainability_infos, :icon_pale, :string
  end
end
