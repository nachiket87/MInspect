class CreateInspectionReports < ActiveRecord::Migration[7.1]
  def change
    create_table :inspection_reports do |t|
      t.string :title

      t.timestamps
    end
  end
end
