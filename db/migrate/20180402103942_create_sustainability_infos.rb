class CreateSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :sustainability_infos do |t|
      t.text :sustainability_class
      t.text :description
      t.text :rating
      t.references :products, foreign_key: true

      t.timestamps
    end
  end
end
