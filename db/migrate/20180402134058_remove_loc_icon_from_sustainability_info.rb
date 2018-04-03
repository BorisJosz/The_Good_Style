class RemoveLocIconFromSustainabilityInfo < ActiveRecord::Migration[5.1]
  def change
    remove_column :sustainability_infos, :locicon
  end
end
