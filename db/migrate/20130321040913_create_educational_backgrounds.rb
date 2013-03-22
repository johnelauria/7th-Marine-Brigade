class CreateEducationalBackgrounds < ActiveRecord::Migration
  def change
    create_table :educational_backgrounds do |t|
      t.string :elementary_location
      t.date :elementary_date_of_attendance1
      t.date :elementary_date_of_attendance2
      t.integer :elementary_year_graduate
      t.string :high_school_location
      t.date :high_school_date_of_attendance1
      t.date :high_school_date_of_attendance2
      t.integer :high_school_year_graduate
      t.string :college_location
      t.date :college_date_of_attendance1
      t.date :college_date_of_attendance2
      t.integer :college_year_graduate
      t.string :post_graduate_location
      t.date :post_graduate_date_of_attendance1
      t.date :post_graduate_date_of_attendance2
      t.integer :post_graduate_year_graduate
      t.string :other_location
      t.date :other_date_of_attendance1
      t.date :other_date_of_attendance2
      t.string :other_year_graduate
      t.text :civil_service_eligibility

      t.timestamps
    end
  end
end
