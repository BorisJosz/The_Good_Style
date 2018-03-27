class Brand < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates :name, presence:true
  validates :description, presence: true
  # validates :logo, presence: true
  validates :image, presence: true
  validates :url, presence: true
end
