class AddInspectionReportToReportItems < ActiveRecord::Migration[7.1]
  def change
    add_reference :report_items, :inspection_report, foreign_key: true
  end
end
