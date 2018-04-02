class RemoveLocationInfoFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :location_info
  end
end
