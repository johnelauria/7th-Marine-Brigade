class CreateIdFormReservists < ActiveRecord::Migration
  def change
    create_table :id_form_reservists do |t|
      t.integer :personal_detail_id
      t.text :other_identifying_data
      t.string :mother_maiden_firstname
      t.string :mother_maiden_middlename
      t.string :mother_maiden_lastname

      t.timestamps
    end
  end
end
