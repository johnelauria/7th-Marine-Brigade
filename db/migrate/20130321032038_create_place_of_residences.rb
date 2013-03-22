class CreatePlaceOfResidences < ActiveRecord::Migration
  def change
    create_table :place_of_residences do |t|
      t.date :starting_date
      t.date :date_left
      t.text :complete_address

      t.timestamps
    end
  end
end
