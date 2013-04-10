class CreateDuties < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.integer :soi_form_id
      t.string :position
      t.string :unit
      t.date :date1
      t.date :date2
      t.string :authority
      t.string :category

      t.timestamps
    end
  end
end
