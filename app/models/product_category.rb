# frozen_string_literal: true

class ProductCategory < ApplicationRecord
  has_many :products
end
