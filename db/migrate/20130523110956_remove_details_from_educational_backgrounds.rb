class RemoveDetailsFromEducationalBackgrounds < ActiveRecord::Migration
  def up
  	remove_column :educational_backgrounds, :elementary_location
    remove_column :educational_backgrounds, :elementary_date_of_attendance1
    remove_column :educational_backgrounds, :elementary_date_of_attendance2
    remove_column :educational_backgrounds, :elementary_year_graduate
    remove_column :educational_backgrounds, :high_school_location
    remove_column :educational_backgrounds, :high_school_date_of_attendance1
    remove_column :educational_backgrounds, :high_school_date_of_attendance2
    remove_column :educational_backgrounds, :high_school_year_graduate
    remove_column :educational_backgrounds, :college_location
    remove_column :educational_backgrounds, :college_date_of_attendance1
    remove_column :educational_backgrounds, :college_date_of_attendance2
    remove_column :educational_backgrounds, :college_year_graduate
    remove_column :educational_backgrounds, :post_graduate_location
    remove_column :educational_backgrounds, :post_graduate_date_of_attendance1
    remove_column :educational_backgrounds, :post_graduate_date_of_attendance2
    remove_column :educational_backgrounds, :post_graduate_year_graduate
    remove_column :educational_backgrounds, :other_location
    remove_column :educational_backgrounds, :other_date_of_attendance1
    remove_column :educational_backgrounds, :other_date_of_attendance2
    remove_column :educational_backgrounds, :other_year_graduate
    remove_column :educational_backgrounds, :civil_service_eligibility
    remove_column :educational_backgrounds, :college_course
    remove_column :educational_backgrounds, :postgraduate_course
    remove_column :educational_backgrounds, :other_course
    remove_column :educational_backgrounds, :elementary_standing
    remove_column :educational_backgrounds, :elementary_completed
    remove_column :educational_backgrounds, :high_school_standing
    remove_column :educational_backgrounds, :high_school_completed
    remove_column :educational_backgrounds, :college_standing
    remove_column :educational_backgrounds, :college_completed
    remove_column :educational_backgrounds, :post_grad_standing
    remove_column :educational_backgrounds, :post_grad_completed
    remove_column :educational_backgrounds, :other_standing
    remove_column :educational_backgrounds, :other_completed
    add_column :educational_backgrounds, :location, :text
    add_column :educational_backgrounds, :date_of_attendance1, :date
    add_column :educational_backgrounds, :date_of_attendance2, :date
    add_column :educational_backgrounds, :year_graduate, :date
    add_column :educational_backgrounds, :level, :string
    add_column :educational_backgrounds, :standing, :string
    add_column :educational_backgrounds, :completed, :boolean
  end

  def down
  end
end
