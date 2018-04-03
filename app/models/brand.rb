# frozen_string_literal: true

class Brand < ApplicationRecord
  has_many :products
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  # validates :logo, presence: true
  validates :image, presence: true
  validates :url, presence: true
end
