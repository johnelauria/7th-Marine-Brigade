class CreateAadts < ActiveRecord::Migration
  def change
    create_table :aadts do |t|
      t.integer :personal_detail_id
      t.string :rank
      t.string :name
      t.string :afpsn
      t.string :undergo_thirty_days
      t.date :aadt_effective
      t.date :date_of_commission
      t.string :authority
      t.date :date_of_last_promotion
      t.text :permanent_address
      t.string :residence_tel_no
      t.string :assignment_mobilization_center
      t.string :present_reserve_unit_assignment
      t.string :licence
      t.string :special
      t.text :skills
      t.string :purpose_of_aadt

      t.timestamps
    end
  end
end
