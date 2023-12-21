class InspectionReport < ApplicationRecord
  validates :title, presence: true
  has_one_attached :cover_image
end
