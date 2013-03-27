class CreateArrestRecordAndConducts < ActiveRecord::Migration
  def change
    create_table :arrest_record_and_conducts do |t|
      t.integer :personal_detail_id
      t.boolean :convicted_for_violation
      t.text :name_of_court
      t.boolean :family_member_convicted
      t.text :family_name_of_court
      t.boolean :administrative_case_charged
      t.text :explain_administrative_charge
      t.boolean :arrested_or_detained_pd
      t.text :case_nature_place_of_detention
      t.boolean :taking_liquor_or_narcotic

      t.timestamps
    end
  end
end
