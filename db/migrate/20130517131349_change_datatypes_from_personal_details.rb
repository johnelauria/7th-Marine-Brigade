class ChangeDatatypesFromPersonalDetails < ActiveRecord::Migration
  def up
  	remove_column :personal_details, :tin
  	remove_column :personal_details, :AFPSN
  	add_column :personal_details, :tin, :bigint
  	add_column :personal_details, :AFPSN, :bigint
  end

  def down
  	remove_column :personal_details, :tin
  	remove_column :personal_details, :AFPSN
  	add_column :personal_details, :tin, :integer
  	add_column :personal_details, :AFPSN, :integer
  end
end
