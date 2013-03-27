class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.integer :personal_detail_id
      t.string :name
      t.text :address
      t.date :date_of_membership

      t.timestamps
    end
  end
end
