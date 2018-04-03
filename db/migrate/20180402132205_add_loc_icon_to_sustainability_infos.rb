class AddLocIconToSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :sustainability_infos, :locicon, :string
  end
end
