class AddOccupationToRids < ActiveRecord::Migration
  def change
    add_column :rids, :civilian_occupation, :string
    add_column :rids, :civilian_office_address, :text
    add_column :rids, :civilian_contact_number, :string
  end
end
