class ReportItem < ApplicationRecord
  belongs_to :inspection_report
  enum :severity, [:normal, :severe, :critical]
  enum :inspection_coverage, [:not_verified, :verified, :partially_verified, :not_applicable]
end
