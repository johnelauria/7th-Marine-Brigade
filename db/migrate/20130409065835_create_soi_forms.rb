class CreateSoiForms < ActiveRecord::Migration
  def change
    create_table :soi_forms do |t|
      t.integer :personal_detail_id
      t.text :postal_address
      t.integer :postal_tel_num
      t.string :postal_area_code
      t.string :next_of_kin
      t.string :active_comsd_svc
      t.date :length_of_military
      t.string :remarks
      t.string :statement_of_service_remarks
      t.date :date_of_compulsory_retirement

      t.timestamps
    end
  end
end
