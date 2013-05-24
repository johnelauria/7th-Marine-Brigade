class AddPersonaldetailidToChild < ActiveRecord::Migration
  def up
  	remove_column :personal_details, :home_address
    add_column :children, :personal_detail_id, :integer
    add_column :personal_details, :zip_code, :integer
    add_column :personal_details, :subdivision, :string
    add_column :personal_details, :province, :string
    add_column :personal_details, :city, :string
  end

  def down
  	add_column :personal_details, :home_address, :string
    remove_column :children, :personal_detail_id
    remove_column :personal_details, :zip_code
    remove_column :personal_details, :subdivision
    remove_column :personal_details, :province
    remove_column :personal_details, :city
  end
end
