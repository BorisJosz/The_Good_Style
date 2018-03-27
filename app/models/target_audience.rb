class TargetAudience < ApplicationRecord
  belongs_to :product
  validates :gender, presence: true, inclusion:  { in: ["men", "women", "kids"] }
  validates :target_photo, presence:true
end
