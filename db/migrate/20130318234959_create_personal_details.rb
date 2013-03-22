class CreatePersonalDetails < ActiveRecord::Migration
  def change
    create_table :personal_details do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :rank
      t.string :AFPSN
      t.string :BR_SVC
      t.string :assignment
      t.string :duty_address
      t.string :telephone
      t.string :home_address
      t.date :birthdate
      t.string :place_of_birth
      t.string :change_in_name
      t.string :nationality
      t.integer :tin
      t.integer :national_reg_cards_no

      t.timestamps
    end
  end
end
