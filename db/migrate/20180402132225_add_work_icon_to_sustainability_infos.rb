# frozen_string_literal: true

class AddWorkIconToSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :sustainability_infos, :workicon, :string
  end
end
