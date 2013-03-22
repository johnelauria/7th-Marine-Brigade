class CreateMilitarySchools < ActiveRecord::Migration
  def change
    create_table :military_schools do |t|
      t.integer :military_history_id
      t.string :name_of_school
      t.text :location
      t.date :date_of_attendance
      t.string :nature_of_training
      t.string :rating

      t.timestamps
    end
  end
end
