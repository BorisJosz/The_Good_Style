class Product < ApplicationRecord
  belongs_to :target_audience
  belongs_to :brand
  belongs_to :product_category
  has_many :reviews
  has_many :product_variations
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence:true
  validates :image, presence:true
end
