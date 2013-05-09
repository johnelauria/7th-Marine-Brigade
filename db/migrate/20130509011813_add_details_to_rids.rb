class AddDetailsToRids < ActiveRecord::Migration
  def change
    add_column :rids, :relation_to_notify, :string
    add_column :rids, :address_to_notify, :text
    add_column :rids, :contact_to_notify, :string
  end
end
