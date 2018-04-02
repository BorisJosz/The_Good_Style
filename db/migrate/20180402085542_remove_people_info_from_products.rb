class RemovePeopleInfoFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :people_info
  end
end
