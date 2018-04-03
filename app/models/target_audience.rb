# frozen_string_literal: true

class TargetAudience < ApplicationRecord
  has_many :products
  validates :gender, presence: true, inclusion: { in: %w[men women kids] }
  validates :target_photo, presence: true
end
