class AddUserToInspectionReport < ActiveRecord::Migration[7.1]
  def change
    add_reference :inspection_reports, :user, foreign_key: true
  end
end
