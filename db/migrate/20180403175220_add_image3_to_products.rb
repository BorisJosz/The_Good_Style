class AddImage3ToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :image3, :string
  end
end
