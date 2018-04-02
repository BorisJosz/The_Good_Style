class RemoveInfoClassFromSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    remove_column :sustainability_infos, :info_class
  end
end
