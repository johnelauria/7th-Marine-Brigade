class CreateMaritalHistories < ActiveRecord::Migration
  def change
    create_table :marital_histories do |t|
      t.string :marital_status
      t.string :name_of_spouse
      t.date :date_of_marriage
      t.text :place_of_marriage
      t.date :birth_date
      t.text :birth_place
      t.string :occupation
      t.text :place_of_employment
      t.string :name
      t.date :birthdate
      t.text :address

      t.timestamps
    end
  end
end
