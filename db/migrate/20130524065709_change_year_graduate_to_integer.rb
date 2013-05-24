class ChangeYearGraduateToInteger < ActiveRecord::Migration
  def up
  	remove_column :educational_backgrounds, :year_graduate
  	add_column :educational_backgrounds, :year_graduate, :integer
  end

  def down
  	remove_column :educational_backgrounds, :year_graduate
  	add_column :educational_backgrounds, :year_graduate, :date
  end
end
