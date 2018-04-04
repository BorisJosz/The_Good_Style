# frozen_string_literal: true

class AddTargetAudienceToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :target_audience, index: true
  end
end
