class AddDetailsToFamilyHistories < ActiveRecord::Migration
  def change
    add_column :family_histories, :father_first_name, :string
    add_column :family_histories, :father_middle_name, :string
    add_column :family_histories, :father_last_name, :string
    add_column :family_histories, :mother_first_name, :string
    add_column :family_histories, :mother_middle_name, :string
    add_column :family_histories, :mother_last_name, :string
    add_column :family_histories, :father_in_law_firstname, :string
    add_column :family_histories, :father_in_law_middlename, :string
    add_column :family_histories, :father_in_law_lastname, :string
    add_column :family_histories, :mother_in_law_firstname, :string
    add_column :family_histories, :mother_in_law_middlename, :string
    add_column :family_histories, :mother_in_law_lastname, :string
    remove_column :family_histories, :father_name
    remove_column :family_histories, :mother_name
    remove_column :family_histories, :father_in_law_name
    remove_column :family_histories, :mother_in_law_name
  end
end
