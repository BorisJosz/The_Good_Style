class Product < ApplicationRecord
  belongs_to :target_audience
  belongs_to :brand
  belongs_to :product_category
  has_many :sustainability_infos
  has_many :reviews
  has_many :product_variations
  has_many :sizes, through: :product_variations
  has_many :colors, through: :product_variations

  validates :name, presence: true
  validates :description, presence: true
  validates :image, presence:true

  monetize :price_cents
end
