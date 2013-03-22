class CreateFamilyHistories < ActiveRecord::Migration
  def change
    create_table :family_histories do |t|
      t.string :father_name
      t.date :father_date_of_birth
      t.string :father_place_of_birth
      t.text :father_address
      t.string :father_occupation
      t.string :father_place_of_employment
      t.string :father_citizenship
      t.boolean :father_naturalized
      t.date :father_naturalized_date
      t.string :father_naturalized_place
      t.string :mother_name
      t.date :mother_date_of_birth
      t.string :mother_place_of_birth
      t.text :mother_address
      t.string :mother_occupation
      t.string :mother_place_of_employment
      t.string :mother_citizenship
      t.boolean :mother_naturalized
      t.date :mother_naturalized_date
      t.string :mother_naturalized_place
      t.string :father_in_law_name
      t.date :father_in_law_birth_date
      t.string :father_in_law_place_of_birth
      t.text :father_in_law_address
      t.string :father_in_law_occupation
      t.string :father_in_law_place_of_employment
      t.string :father_in_law_citizenship
      t.boolean :father_in_law_naturalized
      t.date :father_in_law_naturalized_date
      t.string :father_in_law_naturalized_place
      t.string :mother_in_law_name
      t.date :mother_in_law_birth_date
      t.string :mother_in_law_place_of_birth
      t.text :mother_in_law_address
      t.string :mother_in_law_occupation
      t.string :mother_in_law_place_of_employment
      t.string :mother_in_law_citizenship
      t.boolean :mother_in_law_naturalized
      t.date :mother_in_law_naturalized_date
      t.string :mother_in_law_naturalized_place

      t.timestamps
    end
  end
end
