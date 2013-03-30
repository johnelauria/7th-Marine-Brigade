class AddCoursesToEducationalBackground < ActiveRecord::Migration
  def change
    add_column :educational_backgrounds, :college_course, :string
    add_column :educational_backgrounds, :postgraduate_course, :string
    add_column :educational_backgrounds, :other_course, :string
  end
end
