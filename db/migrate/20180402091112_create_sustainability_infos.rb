class CreateSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :sustainability_infos do |t|
      t.string :info_class
      t.integer :rating

      t.timestamps
    end
  end
end
