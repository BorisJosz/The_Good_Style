class AddPeopleToSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :sustainability_infos, :people, :text
  end
end
