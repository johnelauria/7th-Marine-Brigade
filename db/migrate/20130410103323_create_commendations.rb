class CreateCommendations < ActiveRecord::Migration
  def change
    create_table :commendations do |t|
      t.integer :soi_form_id
      t.date :date_received
      t.string :awarded_by

      t.timestamps
    end
  end
end
