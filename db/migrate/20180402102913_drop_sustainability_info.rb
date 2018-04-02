class DropSustainabilityInfo < ActiveRecord::Migration[5.1]
  def up
    drop_table :sustainability_infos
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
