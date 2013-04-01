class CreateRids < ActiveRecord::Migration
  def change
    create_table :rids do |t|
      t.integer :personal_detail_id
      t.string :province
      t.string :province_contact
      t.string :religion
      t.string :blood_type
      t.integer :sss
      t.integer :tin
      t.integer :gsis
      t.integer :philhealth
      t.string :person_to_notify
      t.string :size_of_combat
      t.string :size_of_cap
      t.string :size_of_bdu

      t.timestamps
    end
  end
end
