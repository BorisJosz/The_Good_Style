# frozen_string_literal: true

class AddPplIconToSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :sustainability_infos, :pplicon, :string
  end
end
