class InspectionReport < ApplicationRecord
  validates :title, presence: true
  has_one_attached :cover_image do |attachable|
    attachable.variant :thumb, resize_to_fill: [320, 240], preprocessed: true
  end

  validate :acceptable_cover_image


  private

  def acceptable_cover_image
    return unless cover_image.attached?
    acceptable_types = ["image/jpeg", "image/png", "image/jpg"]
    unless acceptable_types.include?(cover_image.content_type)
      errors.add(:cover_image, "must be a JPEG or PNG")
    end
  end
end
