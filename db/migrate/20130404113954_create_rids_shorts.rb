class CreateRidsShorts < ActiveRecord::Migration
  def change
    create_table :rids_shorts do |t|
      t.integer :rid_id
      t.text :manila_address
      t.string :city
      t.string :zip_code
      t.string :nrotc_school
      t.date :nrotc_year_graduate
      t.integer :so_go_number
      t.string :year_and_course
      t.text :school_address
      t.text :other_skills

      t.timestamps
    end
  end
end
