class TargetAudience < ApplicationRecord
  belongs_to :product
  validates :gender, presence:true, inclusion: in {("Men", "Women", "Kids")}
  validates :target_photo, presence:true
end
