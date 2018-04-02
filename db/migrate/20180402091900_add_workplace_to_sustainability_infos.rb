class AddWorkplaceToSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :sustainability_infos, :workplace, :text
  end
end
