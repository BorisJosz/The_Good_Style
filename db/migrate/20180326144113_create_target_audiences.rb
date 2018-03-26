class CreateTargetAudiences < ActiveRecord::Migration[5.1]
  def change
    create_table :target_audiences do |t|
      t.string :gender
      t.string :target_photo
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
