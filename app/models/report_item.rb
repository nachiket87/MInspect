class ReportItem < ApplicationRecord
  belongs_to :inspection_report
  enum :severity, [:normal, :severe, :critical]
end
