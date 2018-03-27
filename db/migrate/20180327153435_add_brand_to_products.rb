class AddBrandToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :brand, index: true
  end
end
