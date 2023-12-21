class InspectionReport < ApplicationRecord
  validates :title, presence: true
  has_one_attached :cover_image do |attachable|
    attachable.variant :thumb, resize_to_fill: [320, 240], preprocessed: true
  end
end
