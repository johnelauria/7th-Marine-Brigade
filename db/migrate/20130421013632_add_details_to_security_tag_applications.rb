class AddDetailsToSecurityTagApplications < ActiveRecord::Migration
  def change
    add_column :security_tag_applications, :position, :string
    add_column :security_tag_applications, :relation_to_notify, :string
    add_column :security_tag_applications, :address_to_notify, :text
    add_column :security_tag_applications, :area_code_to_notify, :string
  end
end
