class CreateGeneralInformations < ActiveRecord::Migration
  def change
    create_table :general_informations do |t|
      t.integer :personal_detail_id
      t.string :reference_name1
      t.text :reference_address1
      t.string :reference_name2
      t.text :reference_address2
      t.string :reference_name3
      t.text :reference_address3
      t.string :reference_name4
      t.text :reference_address4
      t.string :reference_name5
      t.text :reference_address5
      t.string :neighbor_name1
      t.text :neighbor_address1
      t.string :neighbor_name2
      t.text :neighbor_address2
      t.string :neighbor_name3
      t.text :neighbor_address3

      t.timestamps
    end
  end
end
