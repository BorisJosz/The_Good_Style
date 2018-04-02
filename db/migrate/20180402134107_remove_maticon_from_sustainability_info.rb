class RemoveMaticonFromSustainabilityInfo < ActiveRecord::Migration[5.1]
  def change
    remove_column :sustainability_infos, :maticon
  end
end
