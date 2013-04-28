class CreateVehiclePasscards < ActiveRecord::Migration
  def change
    create_table :vehicle_passcards do |t|
      t.integer :personal_detail_id
      t.string :vehicle_make
      t.string :plate_number
      t.integer :year_model
      t.string :color
      t.string :motor_number
      t.string :chassis_number
      t.string :decal_number
      t.string :category

      t.timestamps
    end
  end
end
