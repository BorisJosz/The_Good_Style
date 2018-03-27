class AddUserToBrands < ActiveRecord::Migration[5.1]
  def change
    add_reference :brands, :user, index: true
  end
end
