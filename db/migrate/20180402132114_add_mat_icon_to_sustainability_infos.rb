# frozen_string_literal: true

class AddMatIconToSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :sustainability_infos, :maticon, :string
  end
end
