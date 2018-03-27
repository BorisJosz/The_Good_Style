class Product < ApplicationRecord
  belongs_to :target_audience
  belongs_to :brand
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence:true
  validates :image, presence:true

end
