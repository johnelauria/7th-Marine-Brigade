class CreateImportantUnitAssignments < ActiveRecord::Migration
  def change
    create_table :important_unit_assignments do |t|
      t.integer :military_history_id
      t.string :unit
      t.date :date1
      t.date :date2

      t.timestamps
    end
  end
end
