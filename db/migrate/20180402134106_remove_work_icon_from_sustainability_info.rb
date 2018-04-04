# frozen_string_literal: true

class RemoveWorkIconFromSustainabilityInfo < ActiveRecord::Migration[5.1]
  def change
    remove_column :sustainability_infos, :workicon
  end
end
