class CreateCivilianMilitaryAwards < ActiveRecord::Migration
  def change
    create_table :civilian_military_awards do |t|
      t.integer :rid_id
      t.string :type_of_award
      t.string :authority
      t.date :date_awarded
      t.string :category

      t.timestamps
    end
  end
end
