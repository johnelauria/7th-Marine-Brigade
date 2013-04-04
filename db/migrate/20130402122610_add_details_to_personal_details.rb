class AddDetailsToPersonalDetails < ActiveRecord::Migration
  def change
    add_column :personal_details, :suffix, :string
    add_column :personal_details, :street_name, :string
    add_column :personal_details, :street_number, :integer
    add_column :personal_details, :telephone_area_code, :string
    add_column :personal_details, :mobile_number, :string
  end
end
