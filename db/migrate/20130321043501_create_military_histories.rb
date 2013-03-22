class CreateMilitaryHistories < ActiveRecord::Migration
  def change
    create_table :military_histories do |t|
      t.date :date_of_cad
      t.date :date_commission

      t.timestamps
    end
  end
end
