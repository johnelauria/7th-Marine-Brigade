class AddCompletedToMilitarySchools < ActiveRecord::Migration
  def change
    add_column :military_schools, :completed, :boolean, default: false
  end
end
