class CreateSecurityTagApplications < ActiveRecord::Migration
  def change
    create_table :security_tag_applications do |t|
      t.integer :personal_detail_id
      t.string :office_division
      t.date :date_reported
      t.text :city_address
      t.string :city_telephone
      t.string :city_cellphone
      t.string :name_to_notify
      t.string :telephone_notify
      t.string :cellphone_notify
      t.string :signed_at
      t.date :signed_on

      t.timestamps
    end
  end
end
