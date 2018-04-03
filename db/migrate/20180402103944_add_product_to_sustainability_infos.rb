class AddProductToSustainabilityInfos < ActiveRecord::Migration[5.1]
  def change
    add_reference :sustainability_infos, :product, index: true
  end
end
