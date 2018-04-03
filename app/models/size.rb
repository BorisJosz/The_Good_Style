# frozen_string_literal: true

class Size < ApplicationRecord
  has_many :product_variations
end
