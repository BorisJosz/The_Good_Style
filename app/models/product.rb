class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence:true
  validates :product_image, presence:true
end
