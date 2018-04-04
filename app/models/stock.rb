# frozen_string_literal: true

class Stock < ApplicationRecord
  belongs_to :product_variation
end
