# frozen_string_literal: true

class RemoveProductFromTargetAudience < ActiveRecord::Migration[5.1]
  def change
    remove_column :target_audiences, :product_id
  end
end
