class AddCoverageNotesLocationToReportItem < ActiveRecord::Migration[7.1]
  def change
    add_column :report_items, :notes, :text
    add_column :report_items, :inspection_coverage, :integer, default: 0
  end
end
