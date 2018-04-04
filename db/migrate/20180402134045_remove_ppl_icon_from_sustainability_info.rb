# frozen_string_literal: true

class RemovePplIconFromSustainabilityInfo < ActiveRecord::Migration[5.1]
  def change
    remove_column :sustainability_infos, :pplicon
  end
end
