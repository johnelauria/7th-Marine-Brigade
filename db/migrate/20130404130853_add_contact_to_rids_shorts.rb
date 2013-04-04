class AddContactToRidsShorts < ActiveRecord::Migration
  def change
    add_column :rids_shorts, :home_contact, :string
    add_column :rids_shorts, :email_address, :string
    add_column :aadts, :source_of_commission, :string
  end
end
