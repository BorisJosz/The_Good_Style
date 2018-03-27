class TargetAudience < ApplicationRecord
  has_many :products
  validates :gender, presence: true, inclusion: { in: ["men", "women", "kids"] }
  validates :target_photo, presence: true
end
