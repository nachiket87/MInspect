class CreateReportItems < ActiveRecord::Migration[7.1]
  def change
    create_table :report_items do |t|
      t.string :title 
      t.text :remarks
      t.boolean :approved, default: false, null: false
      t.integer :severity, default: 0, null: false

      t.timestamps
    end
  end
end
