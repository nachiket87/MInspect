class AddDescriptionToInspectionReport < ActiveRecord::Migration[7.1]
  def change
    add_column :inspection_reports, :description, :text
  end
end
