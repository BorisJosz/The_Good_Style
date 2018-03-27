class Product < ApplicationRecord
  belongs_to :target_audience
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image, presence: true
end
