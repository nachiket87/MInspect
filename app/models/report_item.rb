class ReportItem < ApplicationRecord
  belongs_to :inspection_report

  has_many_attached :item_images do |attachable|
    attachable.variant :thumb, resize_to_fill: [320, 240], preprocessed: true
  end

  enum :severity, [:normal, :severe, :critical]
  enum :inspection_coverage, [:not_verified, :verified, :partially_verified, :not_applicable]

  validates :title, presence: true
  validates :notes, presence: true
end
